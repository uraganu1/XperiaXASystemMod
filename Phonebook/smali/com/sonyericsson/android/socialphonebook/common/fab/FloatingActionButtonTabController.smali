.class public abstract Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;
.super Ljava/lang/Object;
.source "FloatingActionButtonTabController.java"


# static fields
.field private static final FAB_SCALE_IN_OUT_DURATION:I = 0x85

.field private static final KEY_IS_FAB_VISIBLE:Ljava/lang/String; = "isFabVisible"


# instance fields
.field protected mCurrentTabState:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

.field protected mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

.field protected mIsFabVisible:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/fab/FloatingActionButton;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/fab/FloatingActionButton;
    .param p2, "tabState"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->mIsFabVisible:Z

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    .line 45
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->mCurrentTabState:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .line 46
    if-eqz p3, :cond_0

    .line 47
    const-string/jumbo v0, "isFabVisible"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->mIsFabVisible:Z

    .line 43
    :cond_0
    return-void
.end method

.method public static setVisibility(Landroid/view/View;Z)V
    .locals 1
    .param p0, "button"    # Landroid/view/View;
    .param p1, "visibility"    # Z

    .prologue
    .line 107
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    return-void

    .line 107
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public abstract onFloatingActionButtonClick(Landroid/app/Activity;)V
.end method

.method public onResume(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V
    .locals 0
    .param p1, "tabState"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->mCurrentTabState:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->updateButtonAppearance()V

    .line 60
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    const-string/jumbo v0, "isFabVisible"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->mIsFabVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    return-void
.end method

.method public onTabSelected(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V
    .locals 0
    .param p1, "tabState"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->mCurrentTabState:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->updateButtonAppearance()V

    .line 71
    return-void
.end method

.method public scaleIn(Landroid/view/View;ILcom/android/contacts/util/AnimUtils$AnimationCallback;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;
    .param p2, "delayMs"    # I
    .param p3, "callback"    # Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    .prologue
    .line 85
    const/16 v0, 0x85

    invoke-static {p1, v0, p2, p3}, Lcom/android/contacts/util/AnimUtils;->scaleIn(Landroid/view/View;IILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 84
    return-void
.end method

.method public scaleOut(Landroid/view/View;Lcom/android/contacts/util/AnimUtils$AnimationCallback;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    .prologue
    .line 97
    const/16 v0, 0x85

    invoke-static {p1, v0, p2}, Lcom/android/contacts/util/AnimUtils;->scaleOut(Landroid/view/View;ILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 96
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->mIsFabVisible:Z

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->setVisibility(Landroid/view/View;Z)V

    .line 115
    return-void
.end method

.method protected abstract updateButtonAppearance()V
.end method
