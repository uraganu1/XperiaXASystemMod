.class Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiGprsSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/WifiGprsSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mSimItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/wifi/WifiGprsSelector$SimItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/wifi/WifiGprsSelector;


# direct methods
.method public constructor <init>(Lcom/mediatek/wifi/WifiGprsSelector;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wifi/WifiGprsSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/wifi/WifiGprsSelector$SimItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p2, "simItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/wifi/WifiGprsSelector$SimItem;>;"
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 780
    iput-object p2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    .line 779
    return-void
.end method

.method private setImageSim(Landroid/widget/RelativeLayout;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V
    .locals 5
    .param p1, "imageSim"    # Landroid/widget/RelativeLayout;
    .param p2, "simItem"    # Lcom/mediatek/wifi/WifiGprsSelector$SimItem;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 871
    iget-boolean v2, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    if-eqz v2, :cond_1

    .line 872
    iget-object v1, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSimIconBitmap:Landroid/graphics/Bitmap;

    .line 873
    .local v1, "resColor":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 874
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 875
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 876
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 870
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "resColor":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    iget v2, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mColor:I

    if-ne v2, v4, :cond_2

    .line 879
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 880
    const v2, 0x80200da

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 882
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setImageStatus(Landroid/widget/ImageView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V
    .locals 3
    .param p1, "imageStatus"    # Landroid/widget/ImageView;
    .param p2, "simItem"    # Lcom/mediatek/wifi/WifiGprsSelector$SimItem;

    .prologue
    .line 859
    iget-boolean v1, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    iget v2, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mState:I

    invoke-virtual {v1, v2}, Lcom/mediatek/wifi/WifiGprsSelector;->getStatusResource(I)I

    move-result v0

    .line 861
    .local v0, "res":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 862
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 858
    .end local v0    # "res":I
    :cond_0
    :goto_0
    return-void

    .line 864
    .restart local v0    # "res":I
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 865
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setNameAndNum(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V
    .locals 3
    .param p1, "textName"    # Landroid/widget/TextView;
    .param p2, "textNum"    # Landroid/widget/TextView;
    .param p3, "simItem"    # Lcom/mediatek/wifi/WifiGprsSelector$SimItem;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 896
    iget-object v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 897
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 902
    :goto_0
    iget-boolean v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 905
    iget-object v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    :goto_1
    return-void

    .line 899
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 900
    iget-object v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 907
    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setTextNumFormat(Landroid/widget/TextView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V
    .locals 3
    .param p1, "textNumFormat"    # Landroid/widget/TextView;
    .param p2, "simItem"    # Lcom/mediatek/wifi/WifiGprsSelector$SimItem;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 828
    iget-boolean v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 830
    iget v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mDispalyNumberFormat:I

    packed-switch v0, :pswitch_data_0

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 832
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 835
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 837
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 839
    :cond_1
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 843
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 844
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_2

    .line 845
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    .line 846
    iget-object v1, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    .line 845
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 848
    :cond_2
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 830
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewHolderId(Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "holder"    # Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 887
    const v0, 0x7f13015a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    .line 888
    const v0, 0x7f13015b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    .line 889
    const v0, 0x7f130157

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mImageStatus:Landroid/widget/ImageView;

    .line 890
    const v0, 0x7f130158

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNumFormat:Landroid/widget/TextView;

    .line 891
    const v0, 0x7f13015c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    .line 892
    const v0, 0x7f130156

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mImageSim:Landroid/widget/RelativeLayout;

    .line 886
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 788
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 792
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 798
    if-nez p2, :cond_0

    .line 799
    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-virtual {v3}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 800
    .local v1, "mFlater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400b8

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 801
    new-instance v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;-><init>(Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;)V

    .line 802
    .local v0, "holder":Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->setViewHolderId(Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;Landroid/view/View;)V

    .line 803
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 807
    .end local v1    # "mFlater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;

    .line 808
    .local v2, "simItem":Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    invoke-direct {p0, v3, v6, v2}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->setNameAndNum(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V

    .line 809
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mImageSim:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v2}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->setImageSim(Landroid/widget/RelativeLayout;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V

    .line 810
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mImageStatus:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->setImageStatus(Landroid/widget/ImageView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V

    .line 811
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNumFormat:Landroid/widget/TextView;

    invoke-direct {p0, v3, v2}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->setTextNumFormat(Landroid/widget/TextView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V

    .line 812
    iget-object v6, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v3}, Lcom/mediatek/wifi/WifiGprsSelector;->-get3(Lcom/mediatek/wifi/WifiGprsSelector;)I

    move-result v3

    if-ne v3, p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 813
    iget v3, v2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mState:I

    if-ne v3, v4, :cond_2

    .line 814
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 815
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 816
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 817
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 824
    :goto_2
    return-object p2

    .line 805
    .end local v0    # "holder":Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;
    .end local v2    # "simItem":Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;
    goto :goto_0

    .restart local v2    # "simItem":Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
    :cond_1
    move v3, v5

    .line 812
    goto :goto_1

    .line 819
    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 820
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 821
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 822
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_2
.end method
