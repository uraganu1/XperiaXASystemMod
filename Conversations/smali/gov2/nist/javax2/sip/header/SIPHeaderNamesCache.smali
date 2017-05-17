.class public abstract Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;
.super Ljava/lang/Object;
.source "SIPHeaderNamesCache.java"


# static fields
.field private static final lowercaseMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 12
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    const-class v5, Lgov2/nist/javax2/sip/header/SIPHeaderNames;

    .line 15
    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 16
    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_0

    .line 28
    return-void

    .line 17
    :cond_0
    aget-object v0, v1, v2

    .line 18
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 16
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 21
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "lowerCase":Ljava/lang/String;
    sget-object v5, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v5, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 25
    .end local v3    # "lowerCase":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "headerName"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v1, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "lowerCase":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 35
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
