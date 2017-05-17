.class public Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectOnClickLocationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mItems:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private createSelectLocationItem(I)Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 83
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    const v4, 0x7f0b01ce

    .line 83
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    const v4, 0x7f02004f

    .line 83
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;-><init>(JLjava/lang/CharSequence;I)V

    return-object v0

    .line 87
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;

    const-wide/16 v2, 0x2

    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 88
    const v4, 0x7f0b01cf

    .line 87
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    const v4, 0x7f02004d

    .line 87
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;-><init>(JLjava/lang/CharSequence;I)V

    return-object v0

    .line 91
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;

    const-wide/16 v2, 0x1

    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    const v4, 0x7f0b01d0

    .line 91
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    const v4, 0x7f02004e

    .line 91
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;-><init>(JLjava/lang/CharSequence;I)V

    return-object v0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addAllMenuItems()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->createSelectLocationItem(I)Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->createSelectLocationItem(I)Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->createSelectLocationItem(I)Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;

    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;->-get1(Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;

    .line 54
    .local v1, "item":Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;
    if-nez p2, :cond_0

    .line 55
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030051

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    const v3, 0x7f0d00fb

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-static {v1}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;->-get2(Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 66
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;->-get0(Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-object p2

    .line 60
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .restart local v2    # "text":Landroid/widget/TextView;
    goto :goto_0
.end method
