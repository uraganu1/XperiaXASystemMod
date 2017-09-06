.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditModeActionBase"
.end annotation


# instance fields
.field private mParams:[Ljava/lang/Object;


# virtual methods
.method protected addParams([Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # [Ljava/lang/Object;

    .prologue
    .line 2963
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->mParams:[Ljava/lang/Object;

    .line 2962
    return-void
.end method

.method protected doEndPosIsSelected()Z
    .locals 1

    .prologue
    .line 2945
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doStartPosIsSelected()Z

    move-result v0

    return v0
.end method

.method protected doNotSelected()Z
    .locals 1

    .prologue
    .line 2937
    const/4 v0, 0x0

    return v0
.end method

.method protected doSelectionIsFixed()Z
    .locals 1

    .prologue
    .line 2949
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doEndPosIsSelected()Z

    move-result v0

    return v0
.end method

.method protected doSelectionIsFixedAndWaitingInput()Z
    .locals 1

    .prologue
    .line 2953
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doEndPosIsSelected()Z

    move-result v0

    return v0
.end method

.method protected doStartPosIsSelected()Z
    .locals 1

    .prologue
    .line 2941
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doNotSelected()Z

    move-result v0

    return v0
.end method
