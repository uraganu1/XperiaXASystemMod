.class public Lcom/android/common/content/ProjectionMap;
.super Ljava/util/HashMap;
.source "ProjectionMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/content/ProjectionMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mColumns:[Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lcom/android/common/content/ProjectionMap;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/common/content/ProjectionMap;->mColumns:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/common/content/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/common/content/ProjectionMap;->putColumn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/common/content/ProjectionMap$Builder;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/android/common/content/ProjectionMap$Builder;

    invoke-direct {v0}, Lcom/android/common/content/ProjectionMap$Builder;-><init>()V

    return-object v0
.end method

.method private putColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/common/content/ProjectionMap;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 84
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/common/content/ProjectionMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
