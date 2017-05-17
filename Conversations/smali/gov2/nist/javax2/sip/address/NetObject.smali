.class public abstract Lgov2/nist/javax2/sip/address/NetObject;
.super Lgov2/nist/core/GenericObject;
.source "NetObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lgov2/nist/core/GenericObject;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 18
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 93
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 94
    .local v13, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 96
    .local v9, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 97
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .local v10, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 98
    .local v11, "i":I
    :goto_1
    array-length v14, v6

    if-lt v11, v14, :cond_1

    const-class v14, Lgov2/nist/javax2/sip/address/NetObject;

    .line 142
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 145
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    .line 146
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto :goto_0

    .line 92
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v9    # "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "hisfields":[Ljava/lang/reflect/Field;
    .end local v11    # "i":I
    .end local v13    # "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v14, 0x0

    return v14

    .line 99
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    .restart local v9    # "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "hisfields":[Ljava/lang/reflect/Field;
    .restart local v11    # "i":I
    .restart local v13    # "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    aget-object v3, v6, v11

    .line 100
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v10, v11

    .line 102
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 103
    .local v12, "modifier":I
    and-int/lit8 v14, v12, 0x2

    const/4 v15, 0x2

    if-eq v14, v15, :cond_4

    .line 104
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 105
    .local v5, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, "fieldName":Ljava/lang/String;
    const-string/jumbo v14, "stringRepresentation"

    .line 106
    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v14, "indentation"

    .line 109
    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_4

    .line 114
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-nez v14, :cond_5

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eq v14, v15, :cond_4

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 135
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 137
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 98
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 115
    .restart local v4    # "fieldName":Ljava/lang/String;
    .restart local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "fname":Ljava/lang/String;
    const-string/jumbo v14, "int"

    .line 116
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_6

    const-string/jumbo v14, "short"

    .line 118
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "char"

    .line 120
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_8

    const-string/jumbo v14, "long"

    .line 122
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_9

    const-string/jumbo v14, "boolean"

    .line 124
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_a

    const-string/jumbo v14, "double"

    .line 126
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_b

    const-string/jumbo v14, "float"

    .line 128
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_4

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    return v14

    .line 117
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    if-eq v14, v15, :cond_4

    const/4 v14, 0x0

    return v14

    .line 119
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    if-eq v14, v15, :cond_4

    const/4 v14, 0x0

    return v14

    .line 121
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    if-eq v14, v15, :cond_4

    const/4 v14, 0x0

    return v14

    .line 123
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    return v14

    .line 125
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    if-eq v14, v15, :cond_4

    const/4 v14, 0x0

    return v14

    .line 127
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    return v14

    .line 133
    .end local v7    # "fname":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 134
    const/4 v14, 0x0

    return v14

    .line 135
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    if-eqz v14, :cond_3

    .line 136
    const/4 v14, 0x0

    return v14

    .line 137
    :cond_e
    const/4 v14, 0x0

    return v14

    .line 140
    :catch_0
    move-exception v2

    .line 139
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 149
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v12    # "modifier":I
    :cond_f
    const/4 v14, 0x1

    return v14
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/address/NetObject;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
