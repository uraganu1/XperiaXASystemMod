.class Landroid/support/v7/widget/CardViewJellybeanMr1;
.super Landroid/support/v7/widget/CardViewEclairMr1;
.source "CardViewJellybeanMr1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/CardViewEclairMr1;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Landroid/support/v7/widget/CardViewJellybeanMr1$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardViewJellybeanMr1$1;-><init>(Landroid/support/v7/widget/CardViewJellybeanMr1;)V

    .line 27
    sput-object v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 26
    return-void
.end method
