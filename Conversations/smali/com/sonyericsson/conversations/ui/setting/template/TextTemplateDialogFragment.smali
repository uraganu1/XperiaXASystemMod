.class public Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;
.super Landroid/app/DialogFragment;
.source "TextTemplateDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;,
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;,
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;
    }
.end annotation


# instance fields
.field private mCancelButtOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChangedListener:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDoneButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEditText:Landroid/widget/EditText;

.field private mMode:I

.field private mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mChangedListener:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 128
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)V

    .line 127
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mDoneButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 165
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)V

    .line 164
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mCancelButtOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const-string/jumbo v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    .line 66
    const-string/jumbo v0, "textTemplate"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    .line 61
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "textTemplate"

    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 78
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09003a

    invoke-direct {v1, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 79
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    if-ne v3, v5, :cond_2

    .line 80
    const v3, 0x7f0b019b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 86
    const v4, 0x7f030047

    .line 85
    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "contentView":Landroid/view/View;
    const v3, 0x7f0d00de

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 88
    new-array v2, v5, [Landroid/text/InputFilter;

    .line 89
    .local v2, "filter":[Landroid/text/InputFilter;
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x46

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 90
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 91
    iget v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    if-eqz v3, :cond_1

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v4}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v4}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mDoneButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    const v4, 0x7f0b0178

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mCancelButtOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    const v4, 0x7f0b015a

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 102
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v3

    .line 82
    .end local v0    # "contentView":Landroid/view/View;
    .end local v2    # "filter":[Landroid/text/InputFilter;
    :cond_2
    const v3, 0x7f0b019c

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    const-string/jumbo v0, "mode"

    iget v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string/jumbo v0, "textTemplate"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 181
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    return-void
.end method

.method public setTextTemplateChangedListener(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mChangedListener:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    .line 173
    return-void
.end method
