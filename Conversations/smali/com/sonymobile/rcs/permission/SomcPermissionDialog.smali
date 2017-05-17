.class public Lcom/sonymobile/rcs/permission/SomcPermissionDialog;
.super Landroid/app/DialogFragment;
.source "SomcPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;
    }
.end annotation


# instance fields
.field private mAppInfoDescTextView:Landroid/widget/TextView;

.field private mCancelButton:Landroid/widget/Button;

.field private mContinueButton:Landroid/widget/Button;

.field private mDescTextView:Landroid/widget/TextView;

.field private mDialogCallback:Lcom/sonymobile/rcs/permission/SomcDialogCallBack;

.field private mDialogType:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

.field private mOkButton:Landroid/widget/Button;

.field private mPermissionDetailsTextView:Landroid/widget/TextView;

.field private mPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/permission/SomcPermissionDialog;)Lcom/sonymobile/rcs/permission/SomcDialogCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/permission/SomcPermissionDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mDialogCallback:Lcom/sonymobile/rcs/permission/SomcDialogCallBack;

    return-object v0
.end method

.method private initViews()Landroid/view/View;
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f080006

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mOkButton:Landroid/widget/Button;

    const v1, 0x7f080008

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f080007

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mContinueButton:Landroid/widget/Button;

    const v1, 0x7f080002

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f080003

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mDescTextView:Landroid/widget/TextView;

    const v1, 0x7f080004

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mPermissionDetailsTextView:Landroid/widget/TextView;

    const v1, 0x7f080005

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mAppInfoDescTextView:Landroid/widget/TextView;

    .line 91
    return-object v0
.end method

.method public static newInstance(Ljava/util/ArrayList;Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;)Lcom/sonymobile/rcs/permission/SomcPermissionDialog;
    .locals 3
    .param p1, "dialogType"    # Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;",
            ")",
            "Lcom/sonymobile/rcs/permission/SomcPermissionDialog;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;

    invoke-direct {v1}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;-><init>()V

    .line 49
    .local v1, "dialogFragment":Lcom/sonymobile/rcs/permission/SomcPermissionDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "permission_list_key"

    .line 50
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v2, "dialog_type_key"

    .line 51
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method

.method private populateDescTextView()V
    .locals 7

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 150
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    iget-object v5, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mPermissionDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void

    .line 151
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "permissionName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getPermissionRationaleString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "rationale":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "\n\n"

    .line 157
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setButtonClickListeners()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$1;-><init>(Lcom/sonymobile/rcs/permission/SomcPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$2;-><init>(Lcom/sonymobile/rcs/permission/SomcPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mContinueButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$3;-><init>(Lcom/sonymobile/rcs/permission/SomcPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method private setUpViews()V
    .locals 5

    .prologue
    const v4, 0x7f05001f

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mDialogType:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    sget-object v1, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->RATIONALE_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mAppInfoDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f05001b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 112
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->setButtonClickListeners()V

    .line 113
    invoke-direct {p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->populateDescTextView()V

    .line 114
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mAppInfoDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "permission_list_key"

    .line 70
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mPermissions:Ljava/util/ArrayList;

    const-string/jumbo v5, "dialog_type_key"

    .line 71
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    iput-object v5, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mDialogType:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    .line 72
    invoke-direct {p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->initViews()Landroid/view/View;

    move-result-object v4

    .line 73
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->setUpViews()V

    .line 74
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x103012b

    invoke-direct {v2, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 76
    .local v2, "ctw":Landroid/view/ContextThemeWrapper;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 78
    .local v3, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->setCancelable(Z)V

    .line 79
    return-object v3
.end method

.method public setCallBack(Lcom/sonymobile/rcs/permission/SomcDialogCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/sonymobile/rcs/permission/SomcDialogCallBack;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mDialogCallback:Lcom/sonymobile/rcs/permission/SomcDialogCallBack;

    .line 61
    return-void
.end method
