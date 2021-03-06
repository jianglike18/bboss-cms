/*
 * WARNING: DO NOT EDIT THIS FILE. This is a generated file that is synchronized
 * by MyEclipse Hibernate tool integration.
 *
 * Created Wed Feb 08 15:36:16 CST 2006 by MyEclipse Hibernate Tool.
 */
package com.frameworkset.platform.sysmgrcore.entity;

import java.io.Serializable;

/**
 * A class representing a composite primary key id for the td_sm_operreg
 * table.  This object should only be instantiated for use with instances 
 * of the Operres class.
 */
public class OperresKey
    implements Serializable
{
    /** The cached hash code value for this instance.  Settting to 0 triggers re-calculation. */
    private volatile int hashValue = 0;

    /** The value of the OP_ID component of this composite id. */
    private String opId;

    /** The value of the RES_ID component of this composite id. */
    private String resId;

    /**
     * Simple constructor of OperresKey instances.
     */
    public OperresKey()
    {
    }

    /**
     * Returns the value of the opId property.
     * @return String
     */
    public String getOpId()
    {
        return opId;
    }

    /**
     * Sets the value of the opId property.
     * @param opId
     */
    public void setOpId(String opId)
    {
        hashValue = 0;
        this.opId = opId;
    }

    /**
     * Returns the value of the resId property.
     * @return String
     */
    public String getResId()
    {
        return resId;
    }

    /**
     * Sets the value of the resId property.
     * @param resId
     */
    public void setResId(String resId)
    {
        hashValue = 0;
        this.resId = resId;
    }

    /**
     * Implementation of the equals comparison on the basis of equality of the id components.
     * @param rhs
     * @return boolean
     */
    public boolean equals(Object rhs)
    {
        if (rhs == null)
            return false;
        if (! (rhs instanceof OperresKey))
            return false;
        OperresKey that = (OperresKey) rhs;
        if (this.getOpId() != null && that.getOpId() != null)
        {
            if (! this.getOpId().equals(that.getOpId()))
            {
                return false;
            }
        }
        if (this.getResId() != null && that.getResId() != null)
        {
            if (! this.getResId().equals(that.getResId()))
            {
                return false;
            }
        }
        return true;
    }

    /**
     * Implementation of the hashCode method conforming to the Bloch pattern with
     * the exception of array properties (these are very unlikely primary key types).
     * @return int
     */
    public int hashCode()
    {
        if (this.hashValue == 0)
        {
            int result = 17;
            int opIdValue = this.getOpId() == null ? 0 : this.getOpId().hashCode();
            result = result * 37 + opIdValue;
            int resIdValue = this.getResId() == null ? 0 : this.getResId().hashCode();
            result = result * 37 + resIdValue;
            this.hashValue = result;
        }
        return this.hashValue;
    }
}
