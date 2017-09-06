.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditModeActions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
    }
.end annotation


# instance fields
.field private mActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

.field private mMode:I


# direct methods
.method private getAction(I)Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2877
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;

    return-object v0

    .line 2879
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public doNext(I)Z
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x0

    .line 2888
    const-string/jumbo v1, "EditModeActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--- do the next action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->getAction(I)Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;

    move-result-object v0

    .line 2891
    .local v0, "action":Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
    if-nez v0, :cond_0

    .line 2892
    const-string/jumbo v1, "EditModeActions"

    const-string/jumbo v2, "--- invalid action error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    return v4

    .line 2895
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2909
    return v4

    .line 2897
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doNotSelected()Z

    move-result v1

    return v1

    .line 2899
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doStartPosIsSelected()Z

    move-result v1

    return v1

    .line 2901
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doEndPosIsSelected()Z

    move-result v1

    return v1

    .line 2903
    :pswitch_3
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2904
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doSelectionIsFixedAndWaitingInput()Z

    move-result v1

    return v1

    .line 2906
    :cond_1
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doSelectionIsFixed()Z

    move-result v1

    return v1

    .line 2895
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAction(I)V
    .locals 1
    .param p1, "newMode"    # I

    .prologue
    .line 2868
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I[Ljava/lang/Object;)V

    .line 2867
    return-void
.end method

.method public onAction(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "newMode"    # I
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2858
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->getAction(I)Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->addParams([Ljava/lang/Object;)V

    .line 2859
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mMode:I

    .line 2860
    invoke-virtual {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    .line 2857
    return-void
.end method

.method public onSelectAction()V
    .locals 1

    .prologue
    .line 2872
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    .line 2871
    return-void
.end method
