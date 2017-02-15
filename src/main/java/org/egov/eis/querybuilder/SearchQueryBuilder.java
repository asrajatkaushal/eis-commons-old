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

package org.egov.eis.querybuilder;

import java.util.Iterator;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class SearchQueryBuilder {
	public String searchQueryBuilder(Map<String, Object> mapParams) {
		StringBuilder query = new StringBuilder("");
		String sortBy = "", limit = "", offset = "";

		// checking if user has specified any conditions related to search or not
		if (mapParams == null)
			return "";

		// checking if user has specified any sorting order. If yes keep store it separately & remove from map
		if (mapParams.containsKey("sort")) {
			sortBy = " order by " + mapParams.get("sort") + " ";
			mapParams.remove("sort");
		}

		// checking if user has specified any limit. If yes keep store it separately & remove from map
		if (mapParams.containsKey("limit")) {
			limit = " limit " + mapParams.get("limit") + " ";
			mapParams.remove("limit");
		}

		// checking if user has specified any offset value. If yes keep store it separately & remove from map
		if (mapParams.containsKey("offset")) {
			offset = " offset " + mapParams.get("offset") + " ";
			mapParams.remove("offset");
		}

		// checking if user has given any where conditions. & building query based on that.
		if (!mapParams.isEmpty())
			query.append(" where ");
		for (Iterator<Map.Entry<String, Object>> it = mapParams.entrySet().iterator(); it.hasNext();) {
			String key = it.next().getKey();
			query.append(key + (key.toLowerCase().contains("from") ? " >= ? "
					: key.toLowerCase().contains("to") ? " <= ? " : " = ? "));
			if (it.hasNext())
				query.append("AND ");
		}

		// appending query with sorting order, limit & offset (if any).
		query.append(sortBy);
		query.append(limit);
		query.append(offset);

		return query.toString();
	}
}
