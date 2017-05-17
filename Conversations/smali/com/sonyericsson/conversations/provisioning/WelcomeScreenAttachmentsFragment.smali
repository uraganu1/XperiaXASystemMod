.class public Lcom/sonyericsson/conversations/provisioning/WelcomeScreenAttachmentsFragment;
.super Landroid/support/v4/app/Fragment;
.source "WelcomeScreenAttachmentsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const v8, 0x7f030071

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 38
    .local v4, "root":Landroid/view/View;
    const v8, 0x7f0d0139

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 39
    .local v7, "tv":Landroid/widget/TextView;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 40
    .local v2, "imageSpanScaleFactor":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenAttachmentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0112

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v2, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 42
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 43
    .local v1, "height":I
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v6

    .line 45
    .local v6, "span":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string/jumbo v9, "img:smiley"

    const v10, 0x7f0200fe

    .line 44
    invoke-static {v8, v10, v9, v6, v1}, Lcom/sonyericsson/conversations/util/TextUtil;->replaceTagWithDrawable(Landroid/content/Context;ILjava/lang/String;Landroid/text/Spannable;I)Landroid/text/Spannable;

    move-result-object v6

    .line 48
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenAttachmentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 51
    .local v0, "c":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 53
    .local v5, "scale":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v8

    if-lez v8, :cond_0

    .line 54
    const v8, 0x7f0d013a

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 55
    .local v3, "iv":Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    .end local v3    # "iv":Landroid/widget/ImageView;
    :cond_0
    return-object v4
.end method
