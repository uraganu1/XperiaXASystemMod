.class public Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;
.super Landroid/support/v4/app/Fragment;
.source "WelcomeScreenStoreFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
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
    .line 43
    const v8, 0x7f030072

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 45
    .local v4, "root":Landroid/view/View;
    const v8, 0x7f0d0139

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 46
    .local v7, "tv":Landroid/widget/TextView;
    const v8, 0x7f0d013b

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 47
    .local v3, "lyt":Landroid/widget/LinearLayout;
    const v8, 0x7f0d013c

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 51
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v9, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;

    invoke-direct {v9, p0, v2, v3, v4}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;-><init>(Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 63
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    const v9, 0x3fe66666    # 1.8f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 64
    .local v1, "height":I
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v6

    .line 65
    .local v6, "span":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 66
    const-string/jumbo v9, "img:sticker_store"

    .line 65
    const v10, 0x7f0200ff

    invoke-static {v8, v10, v9, v6, v1}, Lcom/sonyericsson/conversations/util/TextUtil;->replaceTagWithDrawable(Landroid/content/Context;ILjava/lang/String;Landroid/text/Spannable;I)Landroid/text/Spannable;

    move-result-object v6

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 69
    const-string/jumbo v9, "img:count"

    .line 68
    const v10, 0x7f020100

    .line 67
    invoke-static {v8, v10, v9, v6, v1}, Lcom/sonyericsson/conversations/util/TextUtil;->replaceTagWithDrawable(Landroid/content/Context;ILjava/lang/String;Landroid/text/Spannable;I)Landroid/text/Spannable;

    move-result-object v6

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 72
    const-string/jumbo v9, "img:store_circle"

    const v10, 0x7f020152

    .line 71
    invoke-static {v8, v10, v9, v6, v1}, Lcom/sonyericsson/conversations/util/TextUtil;->replaceTagWithDrawable(Landroid/content/Context;ILjava/lang/String;Landroid/text/Spannable;I)Landroid/text/Spannable;

    move-result-object v6

    .line 73
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 76
    .local v0, "c":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 78
    .local v5, "scale":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v8

    if-lez v8, :cond_0

    .line 79
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    :cond_0
    return-object v4
.end method
