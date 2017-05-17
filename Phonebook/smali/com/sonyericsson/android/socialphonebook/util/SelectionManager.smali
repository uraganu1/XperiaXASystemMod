.class public Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;
    }
.end annotation


# static fields
.field public static final ENTER_SELECTION_MODE:I = 0x1

.field public static final LEAVE_SELECTION_MODE:I = 0x2

.field public static final SELECT_ALL_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SelectionManager"


# instance fields
.field private mInSelectionMode:Z

.field private mInverseSelection:Z

.field private mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deSelectAll()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mInverseSelection:Z

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public enterSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mInSelectionMode:Z

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 89
    :cond_1
    return-void
.end method

.method public getSelectedCount()I
    .locals 2

    .prologue
    .line 110
    const/4 v0, -0x1

    .line 111
    .local v0, "result":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;->getSelectedCount()I

    move-result v0

    .line 114
    :cond_0
    return v0
.end method

.method public inSelectAllMode()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mInverseSelection:Z

    return v0
.end method

.method public inSelectionMode()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public leaveSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mInSelectionMode:Z

    .line 100
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mInverseSelection:Z

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 96
    :cond_1
    return-void
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mInverseSelection:Z

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->enterSelectionMode()V

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public setSelectionListener(Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;

    .line 61
    return-void
.end method

.method public toggleAll(Z)V
    .locals 0
    .param p1, "allMarked"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->mInverseSelection:Z

    .line 71
    return-void
.end method
