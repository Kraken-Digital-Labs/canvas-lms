/*
 * Copyright (C) 2023 - present Instructure, Inc.
 *
 * This file is part of Canvas.
 *
 * Canvas is free software: you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License as published by the Free
 * Software Foundation, version 3 of the License.
 *
 * Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

import React from 'react'
import Router from 'react-router'
import {BrowserRouter} from 'react-router-dom'
import {render} from '@testing-library/react'
import {QueryProvider, queryClient} from '@canvas/query'
import {ViewRubrics} from '../index'
import {RUBRICS_QUERY_RESPONSE} from './fixtures'

jest.mock('react-router', () => ({
  ...jest.requireActual('react-router'),
  useParams: jest.fn(),
}))

describe('ViewRubrics Tests', () => {
  const renderComponent = () => {
    return render(
      <QueryProvider>
        <BrowserRouter>
          <ViewRubrics />
        </BrowserRouter>
      </QueryProvider>
    )
  }

  describe('account level rubrics', () => {
    beforeAll(() => {
      jest.spyOn(Router, 'useParams').mockReturnValue({accountId: '1'})
    })

    it('renders the ViewRubrics component with all rubric data split rubrics by workflow state', () => {
      queryClient.setQueryData(['accountRubrics-1'], RUBRICS_QUERY_RESPONSE)
      const {getByTestId, getByText} = renderComponent()

      // total rubrics length per workflow state + header row
      expect(getByTestId('saved-rubrics-panel').querySelectorAll('tr').length).toEqual(3)

      expect(getByTestId('rubric-title-1')).toHaveTextContent('Rubric 1')
      expect(getByTestId('rubric-points-1')).toHaveTextContent('5')
      expect(getByTestId('rubric-criterion-count-1')).toHaveTextContent('1')
      expect(getByTestId('rubric-locations-1')).toHaveTextContent('-')

      expect(getByTestId('rubric-title-3')).toHaveTextContent('Rubric 3')
      expect(getByTestId('rubric-points-3')).toHaveTextContent('15')
      expect(getByTestId('rubric-criterion-count-3')).toHaveTextContent('3')
      expect(getByTestId('rubric-locations-3')).toHaveTextContent('-')

      const archivedRubricsTab = getByText('Archived')
      archivedRubricsTab.click()

      expect(getByTestId('archived-rubrics-table').querySelectorAll('tr').length).toEqual(2)

      expect(getByTestId('rubric-title-2')).toHaveTextContent('Rubric 2')
      expect(getByTestId('rubric-points-2')).toHaveTextContent('10')
      expect(getByTestId('rubric-criterion-count-2')).toHaveTextContent('2')
      expect(getByTestId('rubric-locations-2')).toHaveTextContent('-')
    })

    it('renders a popover menu with access to the rubric edit modal', () => {
      const mockNavigate = jest.fn()
      jest.spyOn(Router, 'useNavigate').mockReturnValue(mockNavigate)

      queryClient.setQueryData(['accountRubrics-1'], RUBRICS_QUERY_RESPONSE)
      const {getByTestId} = renderComponent()

      const popover = getByTestId('rubric-options-1-button')
      popover.click()
      const editButton = getByTestId('edit-rubric-button')
      editButton.click()

      expect(Router.useNavigate).toHaveBeenCalledWith()
      expect(Router.useNavigate).toHaveReturnedWith(expect.any(Function))
    })

    it('renders a popover menu with access to the rubric duplicate modal', () => {
      queryClient.setQueryData(['accountRubrics-1'], RUBRICS_QUERY_RESPONSE)
      const {getByTestId} = renderComponent()

      const popover = getByTestId('rubric-options-1-button')
      popover.click()
      const duplicateButton = getByTestId('duplicate-rubric-button')
      duplicateButton.click()

      expect(getByTestId('duplicate-rubric-modal')).toBeInTheDocument()
    })

    it('renders a popover menu with access to the rubric delete modal', () => {
      queryClient.setQueryData(['accountRubrics-1'], RUBRICS_QUERY_RESPONSE)
      const {getByTestId} = renderComponent()

      const popover = getByTestId('rubric-options-1-button')
      popover.click()
      const deleteButton = getByTestId('delete-rubric-button')
      deleteButton.click()

      expect(getByTestId('delete-rubric-modal')).toBeInTheDocument()
    })
  })

  describe('course level rubrics', () => {
    beforeAll(() => {
      jest.spyOn(Router, 'useParams').mockReturnValue({courseId: '1'})
    })
    it('renders the ViewRubrics component with split rubrics by workflow state', () => {
      queryClient.setQueryData(['courseRubrics-1'], RUBRICS_QUERY_RESPONSE)
      const {getByTestId, getByText} = renderComponent()

      // total rubrics length per workflow state + header row
      expect(getByTestId('saved-rubrics-table').querySelectorAll('tr').length).toEqual(3)

      expect(getByTestId('rubric-title-1')).toHaveTextContent('Rubric 1')
      expect(getByTestId('rubric-points-1')).toHaveTextContent('5')
      expect(getByTestId('rubric-criterion-count-1')).toHaveTextContent('1')
      expect(getByTestId('rubric-locations-1')).toHaveTextContent('-')

      expect(getByTestId('rubric-title-3')).toHaveTextContent('Rubric 3')
      expect(getByTestId('rubric-points-3')).toHaveTextContent('15')
      expect(getByTestId('rubric-criterion-count-3')).toHaveTextContent('3')
      expect(getByTestId('rubric-locations-3')).toHaveTextContent('-')

      const archivedRubricsTab = getByText('Archived')
      archivedRubricsTab.click()

      expect(getByTestId('archived-rubrics-table').querySelectorAll('tr').length).toEqual(2)

      expect(getByTestId('rubric-title-2')).toHaveTextContent('Rubric 2')
      expect(getByTestId('rubric-points-2')).toHaveTextContent('10')
      expect(getByTestId('rubric-criterion-count-2')).toHaveTextContent('2')
      expect(getByTestId('rubric-locations-2')).toHaveTextContent('-')
    })

    it('renders a popover menu with access to the rubric edit modal', () => {
      const mockNavigate = jest.fn()
      jest.spyOn(Router, 'useNavigate').mockReturnValue(mockNavigate)

      queryClient.setQueryData(['courseRubrics-1'], RUBRICS_QUERY_RESPONSE)
      const {getByTestId} = renderComponent()

      const popover = getByTestId('rubric-options-1-button')
      popover.click()
      const editButton = getByTestId('edit-rubric-button')
      editButton.click()

      expect(Router.useNavigate).toHaveBeenCalledWith()
      expect(Router.useNavigate).toHaveReturnedWith(expect.any(Function))
    })

    it('renders a popover menu with access to the rubric duplicate modal', () => {
      queryClient.setQueryData(['courseRubrics-1'], RUBRICS_QUERY_RESPONSE)
      const {getByTestId} = renderComponent()

      const popover = getByTestId('rubric-options-1-button')
      popover.click()
      const duplicateButton = getByTestId('duplicate-rubric-button')
      duplicateButton.click()

      expect(getByTestId('duplicate-rubric-modal')).toBeInTheDocument()
    })

    it('renders a popover menu with access to the rubric delete modal', () => {
      queryClient.setQueryData(['courseRubrics-1'], RUBRICS_QUERY_RESPONSE)
      const {getByTestId} = renderComponent()

      const popover = getByTestId('rubric-options-1-button')
      popover.click()
      const deleteButton = getByTestId('delete-rubric-button')
      deleteButton.click()

      expect(getByTestId('delete-rubric-modal')).toBeInTheDocument()
    })
  })
})
