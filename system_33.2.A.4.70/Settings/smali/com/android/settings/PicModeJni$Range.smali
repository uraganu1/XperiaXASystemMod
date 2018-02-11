.class public Lcom/android/settings/PicModeJni$Range;
.super Ljava/lang/Object;
.source "PicModeJni.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PicModeJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public defaultValue:I

.field public max:I

.field public min:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/settings/PicModeJni$Range;->set(III)V

    .line 57
    return-void
.end method


# virtual methods
.method public set(III)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/settings/PicModeJni$Range;->min:I

    .line 63
    iput p2, p0, Lcom/android/settings/PicModeJni$Range;->max:I

    .line 64
    iput p3, p0, Lcom/android/settings/PicModeJni$Range;->defaultValue:I

    .line 61
    return-void
.end method
