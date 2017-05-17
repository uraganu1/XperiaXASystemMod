.class Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;
.super Ljava/lang/Object;
.source "SearchContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchContactItemView"
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I


# instance fields
.field nameView:Landroid/widget/TextView;

.field numberView:Landroid/widget/TextView;

.field photoBadge:Landroid/widget/QuickContactBadge;

.field prepareCall:Landroid/widget/ImageView;

.field typeView:Landroid/widget/TextView;

.field videoCall:Landroid/widget/ImageView;


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->-com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->-com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->values()[Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->UNKNOWN_CALL_LOG:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->-com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;Lcom/sonyericsson/android/socialphonebook/util/ListItemType;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    const v0, 0x7f0e0055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    .line 337
    const v0, 0x7f0e005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->videoCall:Landroid/widget/ImageView;

    .line 338
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->-getcom_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "viewType argument has an undefined value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :pswitch_0
    const v0, 0x7f0e005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->typeView:Landroid/widget/TextView;

    .line 341
    const v0, 0x7f0e0053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->numberView:Landroid/widget/TextView;

    .line 342
    const v0, 0x7f0e0204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->photoBadge:Landroid/widget/QuickContactBadge;

    .line 343
    const v0, 0x7f0e00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->nameView:Landroid/widget/TextView;

    .line 335
    :goto_0
    return-void

    .line 346
    :pswitch_1
    const v0, 0x7f0e0208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->nameView:Landroid/widget/TextView;

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
