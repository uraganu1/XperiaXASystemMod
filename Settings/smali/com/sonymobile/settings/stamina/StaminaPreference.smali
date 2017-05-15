.class public Lcom/sonymobile/settings/stamina/StaminaPreference;
.super Landroid/preference/Preference;
.source "StaminaPreference.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/stamina/StaminaPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/stamina/StaminaPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/settings/stamina/StaminaPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const v1, 0x7f0400bb

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaPreference;->setLayoutResource(I)V

    .line 34
    sget-object v1, Lcom/android/settings/R$styleable;->StaminaPreference:[I

    .line 33
    invoke-virtual {p1, p2, v1, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mTitle:Ljava/lang/CharSequence;

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mSummary:Ljava/lang/CharSequence;

    .line 37
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 30
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 56
    const v3, 0x7f130043

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f130057

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, "summary":Landroid/widget/TextView;
    const v3, 0x7f130042

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, "icon":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_2
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaPreference;->notifyChanged()V

    .line 88
    :cond_0
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 82
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mSummary:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaPreference;->notifyChanged()V

    .line 80
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 74
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaPreference;->mTitle:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaPreference;->notifyChanged()V

    .line 72
    :cond_0
    return-void
.end method
