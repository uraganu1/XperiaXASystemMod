.class public Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

.field private glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
    .locals 0
    .param p1, "animationFactory"    # Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    .line 27
    return-void
.end method


# virtual methods
.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 2
    .param p1, "isFromMemoryCache"    # Z
    .param p2, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 40
    if-eqz p1, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->get()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    return-object v0

    .line 40
    :cond_1
    if-eqz p2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    if-eqz v0, :cond_2

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    return-object v0

    .line 45
    :cond_2
    new-instance v0, Lcom/bumptech/glide/request/animation/ViewAnimation;

    iget-object v1, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/animation/ViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    goto :goto_0
.end method
