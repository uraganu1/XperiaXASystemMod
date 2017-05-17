.class public final Lcom/google/gson/JsonPrimitive;
.super Lcom/google/gson/JsonElement;
.source "JsonPrimitive.java"


# static fields
.field private static final PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x10

    .line 35
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Short;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Byte;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Character;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private static isIntegral(Lcom/google/gson/JsonPrimitive;)Z
    .locals 3
    .param p0, "primitive"    # Lcom/google/gson/JsonPrimitive;

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_0

    .line 339
    return v1

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 336
    .local v0, "number":Ljava/lang/Number;
    instance-of v2, v0, Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/lang/Short;

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/lang/Byte;

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method private static isPrimitiveOrString(Ljava/lang/Object;)Z
    .locals 8
    .param p0, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 274
    instance-of v5, p0, Ljava/lang/String;

    if-nez v5, :cond_0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 279
    .local v1, "classOfPrimitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 284
    return v6

    .line 275
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "classOfPrimitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return v7

    .line 279
    .restart local v0    # "arr$":[Ljava/lang/Class;
    .restart local v1    # "classOfPrimitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    aget-object v4, v0, v2

    .line 280
    .local v4, "standardPrimitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_2
    return v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 306
    if-eq p0, p1, :cond_1

    .line 309
    if-nez p1, :cond_2

    .line 310
    :cond_0
    return v5

    .line 307
    :cond_1
    return v6

    .line 309
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_0

    move-object v4, p1

    .line 312
    check-cast v4, Lcom/google/gson/JsonPrimitive;

    .line 313
    .local v4, "other":Lcom/google/gson/JsonPrimitive;
    iget-object v7, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-eqz v7, :cond_5

    .line 316
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 319
    :cond_3
    iget-object v7, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Number;

    if-nez v7, :cond_9

    .line 326
    :cond_4
    iget-object v5, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    iget-object v6, v4, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 314
    :cond_5
    iget-object v7, v4, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-eqz v7, :cond_6

    :goto_0
    return v5

    :cond_6
    move v5, v6

    goto :goto_0

    .line 316
    :cond_7
    invoke-static {v4}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 317
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_8

    :goto_1
    return v6

    :cond_8
    move v6, v5

    goto :goto_1

    .line 319
    :cond_9
    iget-object v7, v4, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Number;

    if-eqz v7, :cond_4

    .line 320
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 323
    .local v0, "a":D
    invoke-virtual {v4}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 324
    .local v2, "b":D
    cmpl-double v7, v0, v2

    if-eqz v7, :cond_c

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_a
    :goto_2
    return v5

    :cond_b
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_c
    move v5, v6

    goto :goto_2
.end method

.method public getAsBoolean()Z
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getAsBooleanWrapper()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAsDouble()D
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getAsInt()I
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getAsLong()J
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/gson/internal/LazilyParsedNumber;

    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 289
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 293
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    return v2

    :cond_0
    const/16 v2, 0x1f

    .line 290
    return v2

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 295
    .local v0, "value":J
    ushr-long v2, v0, v4

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2

    .line 298
    .end local v0    # "value":J
    :cond_2
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 299
    .restart local v0    # "value":J
    ushr-long v2, v0, v4

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public isBoolean()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public isNumber()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public isString()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "primitive"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 94
    instance-of v2, p1, Ljava/lang/Character;

    if-nez v2, :cond_1

    .line 100
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 102
    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 104
    .end local p1    # "primitive":Ljava/lang/Object;
    :goto_1
    return-void

    .line 97
    .restart local p1    # "primitive":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "primitive":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    int-to-char v0, v1

    .line 98
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    goto :goto_1

    .line 100
    .end local v0    # "c":C
    .restart local p1    # "primitive":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->isPrimitiveOrString(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method
