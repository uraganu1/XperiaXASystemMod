.class public Lcom/android/systemui/volume/IconPulser;
.super Ljava/lang/Object;
.source "IconPulser.java"


# instance fields
.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const v0, 0x10c000d

    .line 32
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/IconPulser;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 31
    return-void
.end method
