.class public final Lcom/google/common/base/Enums;
.super Ljava/lang/Object;
.source "Enums.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Enums$ValueOfFunction;,
        Lcom/google/common/base/Enums$StringConverter;
    }
.end annotation


# static fields
.field private static final enumConstantCache:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/common/base/Enums;->enumConstantCache:Ljava/util/Map;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEnumConstants(Ljava/lang/Class;)Ljava/util/Map;
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v2, Lcom/google/common/base/Enums;->enumConstantCache:Ljava/util/Map;

    monitor-enter v2

    .line 157
    :try_start_0
    sget-object v1, Lcom/google/common/base/Enums;->enumConstantCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 158
    .local v0, "constants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<+Ljava/lang/Enum<*>;>;>;"
    if-nez v0, :cond_0

    .line 159
    invoke-static {p0}, Lcom/google/common/base/Enums;->populateCache(Ljava/lang/Class;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit v2

    .line 161
    return-object v0

    .line 155
    .end local v0    # "constants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<+Ljava/lang/Enum<*>;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getField(Ljava/lang/Enum;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "reflection"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 59
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "impossible":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {p0, p1}, Lcom/google/common/base/Platform;->getEnumIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method private static populateCache(Ljava/lang/Class;)Ljava/util/Map;
    .locals 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<+Ljava/lang/Enum<*>;>;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "enumInstance$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 146
    .local v0, "enumInstance":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 148
    .end local v0    # "enumInstance":Ljava/lang/Enum;, "TT;"
    :cond_0
    sget-object v3, Lcom/google/common/base/Enums;->enumConstantCache:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-object v2
.end method

.method public static stringConverter(Ljava/lang/Class;)Lcom/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/common/base/Enums$StringConverter;

    invoke-direct {v0, p0}, Lcom/google/common/base/Enums$StringConverter;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOfFunction(Ljava/lang/Class;)Lcom/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/common/base/Enums$ValueOfFunction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Enums$ValueOfFunction;-><init>(Ljava/lang/Class;Lcom/google/common/base/Enums$ValueOfFunction;)V

    return-object v0
.end method
