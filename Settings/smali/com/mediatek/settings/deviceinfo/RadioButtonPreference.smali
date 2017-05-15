.class public Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 50
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 53
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method
