.class public Lcom/android/contacts/util/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/DialogManager$DialogShowingView;,
        Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;
    }
.end annotation


# static fields
.field public static final VIEW_ID_KEY:Ljava/lang/String; = "view_id"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mUseDialogId2:Z


# direct methods
.method static synthetic -get0(Lcom/android/contacts/util/DialogManager;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    .line 62
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activity must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    .line 61
    return-void
.end method

.method public static final isManagedId(I)Z
    .locals 2
    .param p0, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 54
    const v1, 0x7f0e0028

    if-eq p0, v1, :cond_0

    const v1, 0x7f0e0029

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 90
    const v3, 0x7f0e0028

    if-ne p1, v3, :cond_0

    .line 91
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    .line 97
    :goto_0
    const-string/jumbo v3, "view_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Bundle does not contain a ViewId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_0
    const v3, 0x7f0e0029

    if-ne p1, v3, :cond_1

    .line 93
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    goto :goto_0

    .line 95
    :cond_1
    return-object v4

    .line 100
    :cond_2
    const-string/jumbo v3, "view_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 101
    .local v2, "viewId":I
    iget-object v3, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3

    instance-of v3, v1, Lcom/android/contacts/util/DialogManager$DialogShowingView;

    if-eqz v3, :cond_3

    .line 105
    check-cast v1, Lcom/android/contacts/util/DialogManager$DialogShowingView;

    .end local v1    # "view":Landroid/view/View;
    invoke-interface {v1, p2}, Lcom/android/contacts/util/DialogManager$DialogShowingView;->createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 106
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_4

    .line 107
    return-object v0

    .line 103
    .end local v0    # "dialog":Landroid/app/Dialog;
    .restart local v1    # "view":Landroid/view/View;
    :cond_3
    return-object v4

    .line 111
    .end local v1    # "view":Landroid/view/View;
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :cond_4
    new-instance v3, Lcom/android/contacts/util/DialogManager$1;

    invoke-direct {v3, p0, p1}, Lcom/android/contacts/util/DialogManager$1;-><init>(Lcom/android/contacts/util/DialogManager;I)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 116
    return-object v0
.end method

.method public showDialogInView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 74
    .local v1, "viewId":I
    const-string/jumbo v2, "view_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Bundle already contains a view_id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "View does not have a proper ViewId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    const-string/jumbo v2, "view_id"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    iget-boolean v2, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    if-eqz v2, :cond_2

    const v0, 0x7f0e0029

    .line 82
    .local v0, "dialogId":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0, p2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 72
    return-void

    .line 81
    .end local v0    # "dialogId":I
    :cond_2
    const v0, 0x7f0e0028

    .restart local v0    # "dialogId":I
    goto :goto_0
.end method
