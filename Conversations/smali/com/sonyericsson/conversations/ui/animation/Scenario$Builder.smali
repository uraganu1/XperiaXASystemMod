.class public Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;
.super Ljava/lang/Object;
.source "Scenario.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/animation/Scenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->A:Ljava/util/ArrayList;

    .line 86
    return-void
.end method


# virtual methods
.method public animate(Landroid/animation/Animator;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->A:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;

    invoke-direct {v1, p1}, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;-><init>(Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    return-object p0
.end method

.method public varargs animateTogether([Landroid/animation/Animator;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;
    .locals 3
    .param p1, "animators"    # [Landroid/animation/Animator;

    .prologue
    .line 179
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 180
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->A:Ljava/util/ArrayList;

    new-instance v2, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;

    invoke-direct {v2, v0}, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;-><init>(Landroid/animation/Animator;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    return-object p0
.end method

.method public build()Lcom/sonyericsson/conversations/ui/animation/Scenario;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Lcom/sonyericsson/conversations/ui/animation/Scenario;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->A:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/animation/Scenario;-><init>(Ljava/util/List;Lcom/sonyericsson/conversations/ui/animation/Scenario;)V

    return-object v0
.end method

.method public changeImage(Landroid/widget/ImageView;I)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "resId"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->A:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;

    new-instance v2, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$4;

    invoke-direct {v2, p0, p2}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$4;-><init>(Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;I)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;-><init>(Ljava/lang/Object;Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    return-object p0
.end method

.method public delay(I)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;
    .locals 2
    .param p1, "delayMillis"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->A:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;

    invoke-direct {v1, p1}, Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    return-object p0
.end method

.method public remove(Landroid/view/View;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->A:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;

    new-instance v2, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$3;-><init>(Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;-><init>(Ljava/lang/Object;Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-object p0
.end method

.method public show(Landroid/view/View;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->A:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;

    new-instance v2, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$1;-><init>(Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;-><init>(Ljava/lang/Object;Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;Lcom/sonyericsson/conversations/ui/animation/Scenario$ViewAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-object p0
.end method
