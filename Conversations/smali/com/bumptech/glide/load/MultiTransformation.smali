.class public Lcom/bumptech/glide/load/MultiTransformation;
.super Ljava/lang/Object;
.source "MultiTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private final transformations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/bumptech/glide/load/Transformation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 18
    .local p1, "transformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 23
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MultiTransformation must contain at least one Transformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    iget-object v3, p0, Lcom/bumptech/glide/load/MultiTransformation;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 55
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/MultiTransformation;->id:Ljava/lang/String;

    return-object v3

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bumptech/glide/load/MultiTransformation;->id:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/Transformation;

    .line 51
    .local v2, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    invoke-interface {v2}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 5
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v1, p1

    .line 36
    .local v1, "previous":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    iget-object v4, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    return-object v1

    .line 36
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/Transformation;

    .line 37
    .local v2, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    invoke-interface {v2, v1, p2, p3}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    .line 38
    .local v3, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    if-nez v1, :cond_2

    .line 41
    :cond_1
    :goto_1
    move-object v1, v3

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    goto :goto_1
.end method
