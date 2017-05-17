.class public abstract Lgov2/nist/javax2/sip/header/SIPObject;
.super Lgov2/nist/core/GenericObject;
.source "SIPObject.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lgov2/nist/core/GenericObject;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 75
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 20
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v14, p1

    .line 85
    check-cast v14, Lgov2/nist/javax2/sip/header/SIPObject;

    .line 86
    .local v14, "that":Lgov2/nist/javax2/sip/header/SIPObject;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 87
    .local v13, "myclass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 89
    .local v9, "hisclass":Ljava/lang/Class;
    :goto_0
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 90
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 91
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .local v10, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 92
    .local v11, "i":I
    :goto_1
    array-length v15, v6

    if-lt v11, v15, :cond_2

    const-class v15, Lgov2/nist/javax2/sip/header/SIPObject;

    .line 139
    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 142
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    .line 143
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto :goto_0

    .line 84
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v9    # "hisclass":Ljava/lang/Class;
    .end local v10    # "hisfields":[Ljava/lang/reflect/Field;
    .end local v11    # "i":I
    .end local v13    # "myclass":Ljava/lang/Class;
    .end local v14    # "that":Lgov2/nist/javax2/sip/header/SIPObject;
    :cond_0
    const/4 v15, 0x0

    return v15

    .line 90
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    .restart local v9    # "hisclass":Ljava/lang/Class;
    .restart local v13    # "myclass":Ljava/lang/Class;
    .restart local v14    # "that":Lgov2/nist/javax2/sip/header/SIPObject;
    :cond_1
    const/4 v15, 0x0

    return v15

    .line 93
    .restart local v10    # "hisfields":[Ljava/lang/reflect/Field;
    .restart local v11    # "i":I
    :cond_2
    aget-object v3, v6, v11

    .line 94
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v10, v11

    .line 96
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 97
    .local v12, "modifier":I
    and-int/lit8 v15, v12, 0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    .line 98
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 99
    .local v5, "fieldType":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, "fieldName":Ljava/lang/String;
    const-string/jumbo v15, "stringRepresentation"

    .line 100
    invoke-virtual {v4, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_5

    const-string/jumbo v15, "indentation"

    .line 103
    invoke-virtual {v4, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_5

    .line 108
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15

    if-nez v15, :cond_6

    .line 125
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_5

    .line 127
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 129
    :cond_3
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_e

    .line 131
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 92
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 109
    .restart local v4    # "fieldName":Ljava/lang/String;
    .restart local v5    # "fieldType":Ljava/lang/Class;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "fname":Ljava/lang/String;
    const-string/jumbo v15, "int"

    .line 110
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_7

    const-string/jumbo v15, "short"

    .line 112
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_8

    const-string/jumbo v15, "char"

    .line 114
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_9

    const-string/jumbo v15, "long"

    .line 116
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_a

    const-string/jumbo v15, "boolean"

    .line 118
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_b

    const-string/jumbo v15, "double"

    .line 120
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_c

    const-string/jumbo v15, "float"

    .line 122
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_5

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v16

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    return v15

    .line 111
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    const/4 v15, 0x0

    return v15

    .line 113
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    const/4 v15, 0x0

    return v15

    .line 115
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    const/4 v15, 0x0

    return v15

    .line 117
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    return v15

    .line 119
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    const/4 v15, 0x0

    return v15

    .line 121
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v16

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v18

    cmpl-double v15, v16, v18

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    return v15

    .line 127
    .end local v7    # "fname":Ljava/lang/String;
    :cond_d
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 128
    const/4 v15, 0x0

    return v15

    .line 129
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    if-eqz v15, :cond_4

    .line 130
    const/4 v15, 0x0

    return v15

    .line 131
    :cond_f
    const/4 v15, 0x0

    return v15

    .line 137
    :catch_0
    move-exception v2

    .line 133
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "accessed field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "modifier  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v16, "modifier.private  2"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    invoke-static {v2}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 146
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v12    # "modifier":I
    :cond_10
    const/4 v15, 0x1

    return v15
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
