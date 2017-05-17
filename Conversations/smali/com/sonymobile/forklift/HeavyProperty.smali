.class public abstract Lcom/sonymobile/forklift/HeavyProperty;
.super Ljava/lang/Object;
.source "HeavyProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field mParentKey:Ljava/lang/Object;

.field mUseDefaultValue:Z


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "parentKey"    # Ljava/lang/Object;

    .prologue
    .line 77
    .local p0, "this":Lcom/sonymobile/forklift/HeavyProperty;, "Lcom/sonymobile/forklift/HeavyProperty<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/forklift/HeavyProperty;->mDefaultValue:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/forklift/HeavyProperty;->mUseDefaultValue:Z

    .line 78
    iput-object p1, p0, Lcom/sonymobile/forklift/HeavyProperty;->mParentKey:Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public byDefault(Ljava/lang/Object;)Lcom/sonymobile/forklift/HeavyProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/sonymobile/forklift/HeavyProperty;, "Lcom/sonymobile/forklift/HeavyProperty<TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/sonymobile/forklift/HeavyProperty;->mDefaultValue:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/forklift/HeavyProperty;->mUseDefaultValue:Z

    .line 86
    return-object p0
.end method

.method public disableCache()Lcom/sonymobile/forklift/HeavyProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/sonymobile/forklift/HeavyProperty;, "Lcom/sonymobile/forklift/HeavyProperty<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/forklift/HeavyProperty;->mParentKey:Ljava/lang/Object;

    .line 91
    return-object p0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lcom/sonymobile/forklift/HeavyProperty;, "Lcom/sonymobile/forklift/HeavyProperty<TV;>;"
    invoke-virtual {p0}, Lcom/sonymobile/forklift/HeavyProperty;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOn(Lcom/sonymobile/forklift/Forklift;)V
    .locals 0
    .param p1, "forklift"    # Lcom/sonymobile/forklift/Forklift;

    .prologue
    .line 116
    .local p0, "this":Lcom/sonymobile/forklift/HeavyProperty;, "Lcom/sonymobile/forklift/HeavyProperty<TV;>;"
    invoke-virtual {p1, p0}, Lcom/sonymobile/forklift/Forklift;->invalidateProperty(Lcom/sonymobile/forklift/HeavyProperty;)V

    .line 115
    return-void
.end method

.method public loadSyncWith(Lcom/sonymobile/forklift/Forklift;)Ljava/lang/Object;
    .locals 3
    .param p1, "forklift"    # Lcom/sonymobile/forklift/Forklift;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/forklift/Forklift;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/sonymobile/forklift/HeavyProperty;, "Lcom/sonymobile/forklift/HeavyProperty<TV;>;"
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 106
    .local v0, "syncResult":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/forklift/HeavyProperty$1;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/forklift/HeavyProperty$1;-><init>(Lcom/sonymobile/forklift/HeavyProperty;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/forklift/PropertyLoader;->startSync()V

    .line 112
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;
    .locals 1
    .param p1, "forklift"    # Lcom/sonymobile/forklift/Forklift;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/forklift/Forklift;",
            ")",
            "Lcom/sonymobile/forklift/PropertyLoader",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/sonymobile/forklift/HeavyProperty;, "Lcom/sonymobile/forklift/HeavyProperty<TV;>;"
    new-instance v0, Lcom/sonymobile/forklift/PropertyLoader;

    invoke-direct {v0, p1, p0}, Lcom/sonymobile/forklift/PropertyLoader;-><init>(Lcom/sonymobile/forklift/Forklift;Lcom/sonymobile/forklift/HeavyProperty;)V

    return-object v0
.end method

.method protected abstract onBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
