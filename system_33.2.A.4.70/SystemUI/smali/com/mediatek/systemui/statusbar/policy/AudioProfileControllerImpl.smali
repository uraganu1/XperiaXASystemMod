.class public Lcom/mediatek/systemui/statusbar/policy/AudioProfileControllerImpl;
.super Ljava/lang/Object;
.source "AudioProfileControllerImpl.java"

# interfaces
.implements Lcom/mediatek/systemui/statusbar/policy/AudioProfileController;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mediatek/systemui/statusbar/policy/AudioProfileControllerImpl;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method
