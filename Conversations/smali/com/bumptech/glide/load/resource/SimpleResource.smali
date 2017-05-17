.class public Lcom/bumptech/glide/load/resource/SimpleResource;
.super Ljava/lang/Object;
.source "SimpleResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-eqz p1, :cond_0

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/SimpleResource;->data:Ljava/lang/Object;

    .line 20
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Data must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/SimpleResource;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 29
    return v0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
