.class final Lcom/google/common/io/Closer$SuppressingSuppressor;
.super Ljava/lang/Object;
.source "Closer.java"

# interfaces
.implements Lcom/google/common/io/Closer$Suppressor;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Closer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SuppressingSuppressor"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/io/Closer$SuppressingSuppressor;

.field static final addSuppressed:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/google/common/io/Closer$SuppressingSuppressor;

    invoke-direct {v0}, Lcom/google/common/io/Closer$SuppressingSuppressor;-><init>()V

    sput-object v0, Lcom/google/common/io/Closer$SuppressingSuppressor;->INSTANCE:Lcom/google/common/io/Closer$SuppressingSuppressor;

    .line 268
    invoke-static {}, Lcom/google/common/io/Closer$SuppressingSuppressor;->getAddSuppressed()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/common/io/Closer$SuppressingSuppressor;->addSuppressed:Ljava/lang/reflect/Method;

    .line 260
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAddSuppressed()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 272
    :try_start_0
    const-class v1, Ljava/lang/Throwable;

    const-string/jumbo v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static isAvailable()Z
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/google/common/io/Closer$SuppressingSuppressor;->addSuppressed:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public suppress(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "closeable"    # Ljava/io/Closeable;
    .param p2, "thrown"    # Ljava/lang/Throwable;
    .param p3, "suppressed"    # Ljava/lang/Throwable;

    .prologue
    .line 281
    if-ne p2, p3, :cond_0

    .line 282
    return-void

    .line 285
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/common/io/Closer$SuppressingSuppressor;->addSuppressed:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/google/common/io/Closer$LoggingSuppressor;->INSTANCE:Lcom/google/common/io/Closer$LoggingSuppressor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/common/io/Closer$LoggingSuppressor;->suppress(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0
.end method