.class public abstract Lgov2/nist/core/GenericObject;
.super Ljava/lang/Object;
.source "GenericObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final immutableClassNames:[Ljava/lang/String;

.field protected static final immutableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected indentation:I

.field protected matchExpression:Lgov2/nist/core/Match;

.field protected stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 91
    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v2, Lgov2/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    const/16 v2, 0x9

    .line 93
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "String"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Character"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Boolean"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Byte"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Short"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Integer"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Long"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Float"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Double"

    aput-object v4, v2, v3

    sput-object v2, Lgov2/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 105
    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lgov2/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 110
    return-void

    .line 106
    :cond_0
    sget-object v2, Lgov2/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "java.lang."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgov2/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Internal error"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 306
    iput v0, p0, Lgov2/nist/core/GenericObject;->indentation:I

    const-string/jumbo v0, ""

    .line 307
    iput-object v0, p0, Lgov2/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public static isMySubclass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "other":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lgov2/nist/core/GenericObject;

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static makeClone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 166
    if-eqz p0, :cond_1

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 168
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p0

    .line 169
    .local v1, "clone_obj":Ljava/lang/Object;
    sget-object v8, Lgov2/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 171
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-nez v8, :cond_3

    const-class v8, Lgov2/nist/core/GenericObject;

    .line 191
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_c

    const-class v8, Lgov2/nist/core/GenericObjectList;

    .line 193
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_d

    const-class v8, Ljava/lang/Cloneable;

    .line 195
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 209
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 166
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clone_obj":Ljava/lang/Object;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "null obj!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 170
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "clone_obj":Ljava/lang/Object;
    :cond_2
    return-object p0

    .line 172
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 173
    .local v2, "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 176
    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v2, v8, :cond_5

    .line 178
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v8, :cond_6

    .line 179
    :goto_1
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v2, v8, :cond_7

    .line 181
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v2, v8, :cond_8

    .line 183
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v8, :cond_9

    .line 185
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v8, :cond_a

    .line 187
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v8, :cond_b

    .line 189
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v8, :cond_0

    check-cast p0, [D

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [D

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 174
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_5
    move-object v8, p0

    .line 177
    check-cast v8, [C

    check-cast v8, [C

    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v8, p0

    .line 178
    check-cast v8, [Z

    check-cast v8, [Z

    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 180
    :cond_7
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 182
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    check-cast p0, [S

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [S

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 184
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    check-cast p0, [I

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [I

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 186
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_a
    check-cast p0, [J

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [J

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 188
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_b
    check-cast p0, [F

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [F

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 192
    .end local v2    # "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_c
    check-cast p0, Lgov2/nist/core/GenericObject;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov2/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 194
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_d
    check-cast p0, Lgov2/nist/core/GenericObjectList;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov2/nist/core/GenericObjectList;->clone()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_e
    :try_start_0
    const-string/jumbo v9, "clone"

    const/4 v8, 0x0

    .line 199
    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v0, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .local v7, "meth":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 200
    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    goto/16 :goto_0

    .line 207
    .end local v7    # "meth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 201
    .local v5, "ex":Ljava/lang/SecurityException;
    goto/16 :goto_0

    .line 207
    .end local v5    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 203
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v4}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 207
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 204
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    goto/16 :goto_0

    .line 207
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    .line 205
    .local v6, "ex":Ljava/lang/reflect/InvocationTargetException;
    goto/16 :goto_0

    .line 207
    .end local v6    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v8

    goto/16 :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 217
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Internal error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 688
    invoke-virtual {p0}, Lgov2/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 424
    if-eqz p1, :cond_0

    .line 425
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 426
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 427
    .local v13, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 429
    .local v9, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 430
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .local v10, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 431
    .local v11, "i":I
    :goto_1
    array-length v14, v6

    if-lt v11, v14, :cond_2

    const-class v14, Lgov2/nist/core/GenericObject;

    .line 477
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 480
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    .line 481
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto :goto_0

    .line 424
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v9    # "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "hisfields":[Ljava/lang/reflect/Field;
    .end local v11    # "i":I
    .end local v13    # "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v14, 0x0

    return v14

    .line 425
    :cond_1
    const/4 v14, 0x0

    return v14

    .line 432
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    .restart local v9    # "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "hisfields":[Ljava/lang/reflect/Field;
    .restart local v11    # "i":I
    .restart local v13    # "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    aget-object v3, v6, v11

    .line 433
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v10, v11

    .line 435
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 436
    .local v12, "modifier":I
    and-int/lit8 v14, v12, 0x2

    const/4 v15, 0x2

    if-eq v14, v15, :cond_4

    .line 437
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 438
    .local v5, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, "fieldName":Ljava/lang/String;
    const-string/jumbo v14, "stringRepresentation"

    .line 439
    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v14, "indentation"

    .line 442
    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_4

    .line 447
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-nez v14, :cond_5

    .line 464
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eq v14, v15, :cond_c

    .line 466
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 468
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_e

    .line 470
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 472
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 431
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 448
    .restart local v4    # "fieldName":Ljava/lang/String;
    .restart local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "fname":Ljava/lang/String;
    const-string/jumbo v14, "int"

    .line 449
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_6

    const-string/jumbo v14, "short"

    .line 451
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "char"

    .line 453
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_8

    const-string/jumbo v14, "long"

    .line 455
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_9

    const-string/jumbo v14, "boolean"

    .line 457
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_a

    const-string/jumbo v14, "double"

    .line 459
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_b

    const-string/jumbo v14, "float"

    .line 461
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_4

    .line 462
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

    .line 450
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

    .line 452
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

    .line 454
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

    .line 456
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

    .line 458
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

    .line 460
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

    .line 465
    .end local v7    # "fname":Ljava/lang/String;
    :cond_c
    const/4 v14, 0x1

    return v14

    .line 467
    :cond_d
    const/4 v14, 0x0

    return v14

    .line 469
    :cond_e
    const/4 v14, 0x0

    return v14

    .line 470
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    if-eqz v14, :cond_3

    .line 471
    const/4 v14, 0x0

    return v14

    .line 472
    :cond_10
    const/4 v14, 0x0

    return v14

    .line 475
    :catch_0
    move-exception v2

    .line 474
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 485
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v12    # "modifier":I
    :cond_11
    const/4 v14, 0x1

    return v14
.end method
