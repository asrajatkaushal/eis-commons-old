/*
 * eGov suite of products aim to improve the internal efficiency,transparency,
 * accountability and the service delivery of the government  organizations.
 *
 *  Copyright (C) 2016  eGovernments Foundation
 *
 *  The updated version of eGov suite of products as by eGovernments Foundation
 *  is available at http://www.egovernments.org
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program. If not, see http://www.gnu.org/licenses/ or
 *  http://www.gnu.org/licenses/gpl.html .
 *
 *  In addition to the terms of the GPL license to be adhered to in using this
 *  program, the following additional terms are to be complied with:
 *
 *      1) All versions of this program, verbatim or modified must carry this
 *         Legal Notice.
 *
 *      2) Any misrepresentation of the origin of the material is prohibited. It
 *         is required that all modified versions of this material be marked in
 *         reasonable ways as different from the original version.
 *
 *      3) This license does not grant any rights to any user of the program
 *         with regards to rights under trademark law for use of the trade names
 *         or trademarks of eGovernments Foundation.
 *
 *  In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
 */

package org.egov.eis.repository;

import java.util.List;
import java.util.Map;

import org.egov.eis.model.Position;
import org.egov.eis.querybuilder.SearchQueryBuilder;
import org.egov.eis.rowmapper.PositionRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class PositionRepository {
	private static final String SELECT_ALL_BASE_QUERY = "SELECT * FROM egeis_position";

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private PositionRowMapper positionRowMapper;

	@Autowired
	private SearchQueryBuilder searchQueryBuilder;

	public Position findPositionById(Long id) {
		Position position = jdbcTemplate.queryForObject(SELECT_ALL_BASE_QUERY + " WHERE id = ?;",
				new Object[] { id }, positionRowMapper);
		return position;
	}
	
	public Position findPositionByName(String name) {
		Position position = jdbcTemplate.queryForObject(SELECT_ALL_BASE_QUERY + " WHERE name = ?;",
				new Object[] { name }, positionRowMapper);
		return position;
	}

	public List<Position> findAllPositions(Map<String, Object> mapParams) {
		List<Position> positions = jdbcTemplate.query(
				SELECT_ALL_BASE_QUERY + searchQueryBuilder.searchQueryBuilder(mapParams), mapParams.values().toArray(),
				positionRowMapper);
		return positions;
	}
}