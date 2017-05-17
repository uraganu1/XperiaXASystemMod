.class public Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragment;
.super Landroid/support/v4/app/Fragment;
.source "JoynWelcomeScreenFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p0, "position"    # I

    .prologue
    .line 29
    new-instance v1, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragment;-><init>()V

    .line 30
    .local v1, "welcomeScreen":Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "position"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "position"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 40
    .local v1, "position":I
    packed-switch v1, :pswitch_data_0

    .line 63
    const/4 v5, 0x0

    return-object v5

    .line 42
    :pswitch_0
    const v5, 0x7f030017

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    return-object v5

    .line 45
    :pswitch_1
    const v5, 0x7f030019

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    return-object v5

    .line 48
    :pswitch_2
    const v5, 0x7f030018

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    return-object v5

    .line 51
    :pswitch_3
    const v5, 0x7f030016

    .line 50
    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    return-object v5

    .line 53
    :pswitch_4
    const v5, 0x7f03001a

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, "root":Landroid/view/View;
    const v5, 0x7f0d004a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 56
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    const v6, 0x3fe66666    # 1.8f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 57
    .local v0, "height":I
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 58
    .local v3, "span":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 59
    const-string/jumbo v6, "img:count"

    const v7, 0x7f020100

    .line 58
    invoke-static {v5, v7, v6, v3, v0}, Lcom/sonyericsson/conversations/util/TextUtil;->replaceTagWithDrawable(Landroid/content/Context;ILjava/lang/String;Landroid/text/Spannable;I)Landroid/text/Spannable;

    move-result-object v3

    .line 60
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object v2

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
