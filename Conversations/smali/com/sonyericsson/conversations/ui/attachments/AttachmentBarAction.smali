.class public abstract Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.super Ljava/lang/Object;
.source "AttachmentBarAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction$ExpandablePicker;
    }
.end annotation


# instance fields
.field protected mIconView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuItemEnum:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

.field private mParentFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->mIconView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->mMenuItemEnum:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    return-object v0
.end method

.method public getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->mParentFragment:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->mParentFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    :cond_0
    return-object v0
.end method

.method public handleActivityResult(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 93
    return-void
.end method

.method public abstract handleButtonClicked()V
.end method

.method public inflate(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030004

    const/4 v3, 0x0

    .line 77
    invoke-static {v1, v2, v3}, Landroid/widget/ImageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    .local v0, "iconView":Landroid/widget/ImageView;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->mIconView:Ljava/lang/ref/WeakReference;

    .line 80
    return-object v0
.end method

.method public init(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)V
    .locals 1
    .param p1, "menuItemEnum"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;
    .param p2, "parent"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->mMenuItemEnum:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->mParentFragment:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public showKeyboardAfterAction()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
