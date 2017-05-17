.class public abstract Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;
.super Ljava/lang/Object;
.source "MenuAbstractPlugin.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;


# static fields
.field protected static final CONTEXT_MENU_ID_ADD_PREFIX:I = 0x1f5

.field protected static final CONTEXT_MENU_ID_BASE:I = 0x1f4


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mCurrentPhoneNumber:Ljava/lang/String;

.field protected mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;->mActivity:Landroid/app/Activity;

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    :cond_1
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;->mActivity:Landroid/app/Activity;

    .line 36
    return-void
.end method
