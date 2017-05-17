.class public Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;
.super Landroid/app/DialogFragment;
.source "SomcPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;
    }
.end annotation


# instance fields
.field private mAppInfoDescTextView:Landroid/widget/TextView;

.field private mCancelButton:Landroid/widget/Button;

.field private mContinueButton:Landroid/widget/Button;

.field private mDescTextView:Landroid/widget/TextView;

.field private mDialogCallback:Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;

.field private mDialogType:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

.field private mOkButton:Landroid/widget/Button;

.field private mPermissionDetailsTextView:Landroid/widget/TextView;

.field private mPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mDialogCallback:Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initViews()Landroid/view/View;
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030068

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0d011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mOkButton:Landroid/widget/Button;

    .line 83
    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mCancelButton:Landroid/widget/Button;

    .line 84
    const v1, 0x7f0d011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mContinueButton:Landroid/widget/Button;

    .line 85
    const v1, 0x7f0d011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mTitleTextView:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mDescTextView:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0d011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mPermissionDetailsTextView:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0d011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mAppInfoDescTextView:Landroid/widget/TextView;

    .line 89
    return-object v0
.end method

.method public static newInstance(Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;)Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;
    .locals 3
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "dialogType"    # Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;",
            ")",
            "Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;-><init>()V

    .line 47
    .local v1, "dialogFragment":Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "permission_list_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 49
    const-string/jumbo v2, "dialog_type_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method

.method private populateDescTextView()V
    .locals 7

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 153
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/CharSequence;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "permissionName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 156
    invoke-static {v5, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getPermissionRationaleString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "rationale":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const-string/jumbo v5, "\n\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "permissionName":Ljava/lang/String;
    .end local v4    # "rationale":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mPermissionDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method private setButtonClickListeners()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$1;-><init>(Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$2;-><init>(Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mContinueButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$3;-><init>(Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method private setUpViews()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mDialogType:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    sget-object v1, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->RATIONALE_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mAppInfoDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mTitleTextView:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f0b027f

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mDescTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0281

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->setButtonClickListeners()V

    .line 116
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->populateDescTextView()V

    .line 93
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mAppInfoDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mDialogType:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    sget-object v1, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->WRITE_SETTINGS_INFO_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mAppInfoDescTextView:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f0b0284

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mTitleTextView:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f0b0280

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mDescTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0282

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "permission_list_key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mPermissions:Ljava/util/ArrayList;

    .line 69
    const-string/jumbo v5, "dialog_type_key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    iput-object v5, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mDialogType:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->initViews()Landroid/view/View;

    move-result-object v4

    .line 71
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->setUpViews()V

    .line 72
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 73
    const v6, 0x103012b

    .line 72
    invoke-direct {v2, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 74
    .local v2, "ctw":Landroid/view/ContextThemeWrapper;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 76
    .local v3, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->setCancelable(Z)V

    .line 77
    return-object v3
.end method

.method public setCallBack(Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->mDialogCallback:Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;

    .line 57
    return-void
.end method
