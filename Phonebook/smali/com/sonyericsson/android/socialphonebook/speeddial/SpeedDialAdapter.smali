.class public Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeedDialAdapter.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;
    }
.end annotation


# static fields
.field public static final SPEED_DIAL_ITEM_LIST_OFFSET:I = 0x1

.field private static final VOICE_MAIL_POSITION:I = 0x1


# instance fields
.field private final SPEED_DIAL_MAX_COUNT:I

.field private mContext:Landroid/content/Context;

.field private mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

.field private mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mSpeedDialItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "speedDialItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->SPEED_DIAL_MAX_COUNT:I

    .line 100
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->SPEED_DIAL_MAX_COUNT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->SPEED_DIAL_MAX_COUNT:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_1

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 102
    const-string/jumbo v2, "Unsupported value set for speed dial maximum number! Value must be between 9 and 99."

    .line 101
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mSpeedDialItems:Ljava/util/Map;

    .line 107
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    .line 108
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mContext:Landroid/content/Context;

    .line 109
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    move-result-object v0

    .line 111
    .local v0, "builder":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->SPEED_DIAL_MAX_COUNT:I

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->getIndexerMode()I

    move-result v2

    .line 112
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->getNumericScrollBarStep()I

    move-result v3

    .line 111
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->buildIndexer(IIII)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 98
    return-void
.end method

.method private getIndexerMode()I
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->SPEED_DIAL_MAX_COUNT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 260
    const/4 v0, 0x2

    return v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getNumericScrollBarStep()I
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->SPEED_DIAL_MAX_COUNT:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    .line 268
    const/4 v0, 0x5

    return v0

    .line 270
    :cond_0
    const/16 v0, 0xa

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->SPEED_DIAL_MAX_COUNT:I

    return v0
.end method

.method public getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 122
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mSpeedDialItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mSpeedDialItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mSpeedDialItems:Ljava/util/Map;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 165
    add-int/lit8 v16, p1, 0x1

    .line 169
    .local v16, "speedDialPosition":I
    if-eqz p2, :cond_0

    .line 170
    move-object/from16 v14, p2

    .line 171
    .local v14, "resultView":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;

    .line 188
    .local v9, "itemsView":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mSpeedDialItems:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;

    .line 189
    .local v15, "speedDialItem":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_1

    .line 192
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get6(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 193
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 194
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get2(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get2(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020020

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get4(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get4(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f090373

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 198
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get3(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f090374

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 199
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get5(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    :goto_1
    return-object v14

    .line 173
    .end local v9    # "itemsView":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;
    .end local v14    # "resultView":Landroid/view/View;
    .end local v15    # "speedDialItem":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400db

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 174
    .restart local v14    # "resultView":Landroid/view/View;
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;

    const/4 v2, 0x0

    invoke-direct {v9, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)V

    .line 176
    .restart local v9    # "itemsView":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;
    const v2, 0x7f0e021c

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v9, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-set4(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 177
    const v2, 0x7f0e021d

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v9, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-set3(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 178
    const v2, 0x7f0e021e

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v9, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-set5(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 179
    const v2, 0x7f0e021a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v9, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-set2(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 180
    const v2, 0x7f0e0219

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v9, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-set0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 181
    const v2, 0x7f0e021f

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-static {v9, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-set1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 183
    const v2, 0x7f0e021b

    .line 182
    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    invoke-static {v9, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-set6(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;Landroid/widget/QuickContactBadge;)Landroid/widget/QuickContactBadge;

    .line 185
    invoke-virtual {v14, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 200
    .restart local v15    # "speedDialItem":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;
    :cond_1
    if-eqz v15, :cond_4

    .line 201
    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getPhoneType()I

    move-result v13

    .line 202
    .local v13, "phoneType":I
    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getPhoneLabel()Ljava/lang/String;

    move-result-object v12

    .line 203
    .local v12, "phoneLabel":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v11, ""

    .line 205
    .local v11, "number":Ljava/lang/String;
    :goto_2
    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getContactName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v10, ""

    .line 207
    .local v10, "name":Ljava/lang/String;
    :goto_3
    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getPhotoId()J

    move-result-wide v4

    .line 209
    .local v4, "photoId":J
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get4(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get4(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    invoke-virtual {v2, v11}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 213
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get3(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 213
    invoke-static {v3, v13, v12}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get5(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get5(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 219
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 220
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 223
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    .line 225
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get6(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setFocusable(Z)V

    .line 226
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get6(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setFocusableInTouchMode(Z)V

    .line 227
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get6(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 228
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get6(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 229
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get6(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get6(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    .line 231
    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getContactId()J

    move-result-wide v6

    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getLookup()Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-static {v6, v7, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get6(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/QuickContactBadge;

    move-result-object v3

    .line 234
    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getContactId()J

    move-result-wide v6

    .line 235
    sget-object v8, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 233
    invoke-virtual/range {v2 .. v8}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    goto/16 :goto_1

    .line 203
    .end local v4    # "photoId":J
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "number":Ljava/lang/String;
    :cond_2
    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "number":Ljava/lang/String;
    goto/16 :goto_2

    .line 205
    :cond_3
    invoke-virtual {v15}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getContactName()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "name":Ljava/lang/String;
    goto/16 :goto_3

    .line 237
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "number":Ljava/lang/String;
    .end local v12    # "phoneLabel":Ljava/lang/String;
    .end local v13    # "phoneType":I
    :cond_4
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get6(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 238
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 239
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get5(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get2(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get4(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;->-get3(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter$SpeedDialListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mContext:Landroid/content/Context;

    .line 244
    const v6, 0x7f090375

    .line 243
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 160
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setItems(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "speedDialItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;>;"
    if-nez p1, :cond_0

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mSpeedDialItems:Ljava/util/Map;

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->notifyDataSetChanged()V

    .line 140
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mSpeedDialItems:Ljava/util/Map;

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 249
    return-void
.end method
