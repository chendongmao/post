package com.atdongruan.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class PostExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PostExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andPIdIsNull() {
            addCriterion("p_id is null");
            return (Criteria) this;
        }

        public Criteria andPIdIsNotNull() {
            addCriterion("p_id is not null");
            return (Criteria) this;
        }

        public Criteria andPIdEqualTo(Integer value) {
            addCriterion("p_id =", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotEqualTo(Integer value) {
            addCriterion("p_id <>", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdGreaterThan(Integer value) {
            addCriterion("p_id >", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("p_id >=", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdLessThan(Integer value) {
            addCriterion("p_id <", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdLessThanOrEqualTo(Integer value) {
            addCriterion("p_id <=", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdIn(List<Integer> values) {
            addCriterion("p_id in", values, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotIn(List<Integer> values) {
            addCriterion("p_id not in", values, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdBetween(Integer value1, Integer value2) {
            addCriterion("p_id between", value1, value2, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotBetween(Integer value1, Integer value2) {
            addCriterion("p_id not between", value1, value2, "pId");
            return (Criteria) this;
        }

        public Criteria andPTitleIsNull() {
            addCriterion("p_title is null");
            return (Criteria) this;
        }

        public Criteria andPTitleIsNotNull() {
            addCriterion("p_title is not null");
            return (Criteria) this;
        }

        public Criteria andPTitleEqualTo(String value) {
            addCriterion("p_title =", value, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPTitleNotEqualTo(String value) {
            addCriterion("p_title <>", value, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPTitleGreaterThan(String value) {
            addCriterion("p_title >", value, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPTitleGreaterThanOrEqualTo(String value) {
            addCriterion("p_title >=", value, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPTitleLessThan(String value) {
            addCriterion("p_title <", value, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPTitleLessThanOrEqualTo(String value) {
            addCriterion("p_title <=", value, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPTitleLike(String value) {
            addCriterion("p_title like", value, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPTitleNotLike(String value) {
            addCriterion("p_title not like", value, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPTitleIn(List<String> values) {
            addCriterion("p_title in", values, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPTitleNotIn(List<String> values) {
            addCriterion("p_title not in", values, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPTitleBetween(String value1, String value2) {
            addCriterion("p_title between", value1, value2, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPTitleNotBetween(String value1, String value2) {
            addCriterion("p_title not between", value1, value2, "pTitle");
            return (Criteria) this;
        }

        public Criteria andPContentIsNull() {
            addCriterion("p_content is null");
            return (Criteria) this;
        }

        public Criteria andPContentIsNotNull() {
            addCriterion("p_content is not null");
            return (Criteria) this;
        }

        public Criteria andPContentEqualTo(String value) {
            addCriterion("p_content =", value, "pContent");
            return (Criteria) this;
        }

        public Criteria andPContentNotEqualTo(String value) {
            addCriterion("p_content <>", value, "pContent");
            return (Criteria) this;
        }

        public Criteria andPContentGreaterThan(String value) {
            addCriterion("p_content >", value, "pContent");
            return (Criteria) this;
        }

        public Criteria andPContentGreaterThanOrEqualTo(String value) {
            addCriterion("p_content >=", value, "pContent");
            return (Criteria) this;
        }

        public Criteria andPContentLessThan(String value) {
            addCriterion("p_content <", value, "pContent");
            return (Criteria) this;
        }

        public Criteria andPContentLessThanOrEqualTo(String value) {
            addCriterion("p_content <=", value, "pContent");
            return (Criteria) this;
        }

        public Criteria andPContentLike(String value) {
            addCriterion("p_content like", value, "pContent");
            return (Criteria) this;
        }

        public Criteria andPContentNotLike(String value) {
            addCriterion("p_content not like", value, "pContent");
            return (Criteria) this;
        }

        public Criteria andPContentIn(List<String> values) {
            addCriterion("p_content in", values, "pContent");
            return (Criteria) this;
        }

        public Criteria andPContentNotIn(List<String> values) {
            addCriterion("p_content not in", values, "pContent");
            return (Criteria) this;
        }

        public Criteria andPContentBetween(String value1, String value2) {
            addCriterion("p_content between", value1, value2, "pContent");
            return (Criteria) this;
        }

        public Criteria andPContentNotBetween(String value1, String value2) {
            addCriterion("p_content not between", value1, value2, "pContent");
            return (Criteria) this;
        }

        public Criteria andPClickIsNull() {
            addCriterion("p_click is null");
            return (Criteria) this;
        }

        public Criteria andPClickIsNotNull() {
            addCriterion("p_click is not null");
            return (Criteria) this;
        }

        public Criteria andPClickEqualTo(Integer value) {
            addCriterion("p_click =", value, "pClick");
            return (Criteria) this;
        }

        public Criteria andPClickNotEqualTo(Integer value) {
            addCriterion("p_click <>", value, "pClick");
            return (Criteria) this;
        }

        public Criteria andPClickGreaterThan(Integer value) {
            addCriterion("p_click >", value, "pClick");
            return (Criteria) this;
        }

        public Criteria andPClickGreaterThanOrEqualTo(Integer value) {
            addCriterion("p_click >=", value, "pClick");
            return (Criteria) this;
        }

        public Criteria andPClickLessThan(Integer value) {
            addCriterion("p_click <", value, "pClick");
            return (Criteria) this;
        }

        public Criteria andPClickLessThanOrEqualTo(Integer value) {
            addCriterion("p_click <=", value, "pClick");
            return (Criteria) this;
        }

        public Criteria andPClickIn(List<Integer> values) {
            addCriterion("p_click in", values, "pClick");
            return (Criteria) this;
        }

        public Criteria andPClickNotIn(List<Integer> values) {
            addCriterion("p_click not in", values, "pClick");
            return (Criteria) this;
        }

        public Criteria andPClickBetween(Integer value1, Integer value2) {
            addCriterion("p_click between", value1, value2, "pClick");
            return (Criteria) this;
        }

        public Criteria andPClickNotBetween(Integer value1, Integer value2) {
            addCriterion("p_click not between", value1, value2, "pClick");
            return (Criteria) this;
        }

        public Criteria andPTimeIsNull() {
            addCriterion("p_time is null");
            return (Criteria) this;
        }

        public Criteria andPTimeIsNotNull() {
            addCriterion("p_time is not null");
            return (Criteria) this;
        }

        public Criteria andPTimeEqualTo(Date value) {
            addCriterionForJDBCDate("p_time =", value, "pTime");
            return (Criteria) this;
        }

        public Criteria andPTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("p_time <>", value, "pTime");
            return (Criteria) this;
        }

        public Criteria andPTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("p_time >", value, "pTime");
            return (Criteria) this;
        }

        public Criteria andPTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("p_time >=", value, "pTime");
            return (Criteria) this;
        }

        public Criteria andPTimeLessThan(Date value) {
            addCriterionForJDBCDate("p_time <", value, "pTime");
            return (Criteria) this;
        }

        public Criteria andPTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("p_time <=", value, "pTime");
            return (Criteria) this;
        }

        public Criteria andPTimeIn(List<Date> values) {
            addCriterionForJDBCDate("p_time in", values, "pTime");
            return (Criteria) this;
        }

        public Criteria andPTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("p_time not in", values, "pTime");
            return (Criteria) this;
        }

        public Criteria andPTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("p_time between", value1, value2, "pTime");
            return (Criteria) this;
        }

        public Criteria andPTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("p_time not between", value1, value2, "pTime");
            return (Criteria) this;
        }

        public Criteria andPuIdIsNull() {
            addCriterion("pu_id is null");
            return (Criteria) this;
        }

        public Criteria andPuIdIsNotNull() {
            addCriterion("pu_id is not null");
            return (Criteria) this;
        }

        public Criteria andPuIdEqualTo(Integer value) {
            addCriterion("pu_id =", value, "puId");
            return (Criteria) this;
        }

        public Criteria andPuIdNotEqualTo(Integer value) {
            addCriterion("pu_id <>", value, "puId");
            return (Criteria) this;
        }

        public Criteria andPuIdGreaterThan(Integer value) {
            addCriterion("pu_id >", value, "puId");
            return (Criteria) this;
        }

        public Criteria andPuIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("pu_id >=", value, "puId");
            return (Criteria) this;
        }

        public Criteria andPuIdLessThan(Integer value) {
            addCriterion("pu_id <", value, "puId");
            return (Criteria) this;
        }

        public Criteria andPuIdLessThanOrEqualTo(Integer value) {
            addCriterion("pu_id <=", value, "puId");
            return (Criteria) this;
        }

        public Criteria andPuIdIn(List<Integer> values) {
            addCriterion("pu_id in", values, "puId");
            return (Criteria) this;
        }

        public Criteria andPuIdNotIn(List<Integer> values) {
            addCriterion("pu_id not in", values, "puId");
            return (Criteria) this;
        }

        public Criteria andPuIdBetween(Integer value1, Integer value2) {
            addCriterion("pu_id between", value1, value2, "puId");
            return (Criteria) this;
        }

        public Criteria andPuIdNotBetween(Integer value1, Integer value2) {
            addCriterion("pu_id not between", value1, value2, "puId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}