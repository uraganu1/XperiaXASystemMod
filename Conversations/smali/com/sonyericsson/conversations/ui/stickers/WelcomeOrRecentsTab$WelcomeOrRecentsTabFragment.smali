.class public Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;
.super Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;
.source "WelcomeOrRecentsTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WelcomeOrRecentsTabFragment"
.end annotation


# instance fields
.field private mCallback:Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;)Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->mCallback:Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;-><init>()V

    return-void
.end method

.method private initWelcomeView(Landroid/view/View;)V
    .locals 13
    .param p1, "welcomeView"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    .line 88
    invoke-virtual {p1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v9, 0x7f0d006e

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 92
    .local v7, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v11, 0x7f0200ff

    .line 92
    invoke-virtual {v9, v11, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 94
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    float-to-int v2, v9

    .line 96
    .local v2, "dim":I
    invoke-virtual {v3, v12, v12, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    .end local v2    # "dim":I
    :cond_0
    new-instance v4, Landroid/text/style/ImageSpan;

    const/4 v9, 0x1

    invoke-direct {v4, v3, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 101
    .local v4, "imageSpan":Landroid/text/style/ImageSpan;
    const-string/jumbo v5, "  "

    .line 102
    .local v5, "spaceForIcon":Ljava/lang/String;
    const v9, 0x7f0b0220

    invoke-virtual {p0, v9}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "descTxt":Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableString;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    .local v6, "ss":Landroid/text/SpannableString;
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v8

    .line 107
    .local v8, "txtLen":I
    add-int/lit8 v9, v8, -0x1

    const/16 v10, 0x11

    invoke-virtual {v6, v4, v9, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 108
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v9, 0x7f0d006c

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "bubble":Landroid/view/View;
    new-instance v9, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment$1;

    invoke-direct {v9, p0}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/stickers/StickerGridTab$StickerGridTabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->hasRecents()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->mGridView:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 80
    const v1, 0x7f0d006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->initWelcomeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->mCallback:Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;

    .line 69
    return-void
.end method
