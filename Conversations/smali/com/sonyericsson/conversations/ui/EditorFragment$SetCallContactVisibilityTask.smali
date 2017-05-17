.class final Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;
.super Landroid/os/AsyncTask;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetCallContactVisibilityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sonyericsson/conversations/model/Participant;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 681
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 682
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;->mMenuItem:Landroid/view/MenuItem;

    .line 681
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 687
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 688
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 686
    check-cast p1, [Lcom/sonyericsson/conversations/model/Participant;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;->doInBackground([Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;->mMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;->mMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 693
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 693
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
