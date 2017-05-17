.class public Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "DefaultValueEditTextPreference.java"


# instance fields
.field public mDefaultValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->mDefaultValue:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->mDefaultValue:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->mDefaultValue:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 50
    return-object v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 1
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->mDefaultValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 38
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->mDefaultValue:Ljava/lang/String;

    .line 53
    return-void
.end method
