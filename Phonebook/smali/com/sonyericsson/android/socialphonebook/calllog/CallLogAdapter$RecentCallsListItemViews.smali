.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecentCallsListItemViews"
.end annotation


# instance fields
.field callLocationView:Landroid/widget/TextView;

.field callSubjectView:Landroid/widget/TextView;

.field countView:Landroid/widget/TextView;

.field dateView:Landroid/widget/TextView;

.field detailView:Landroid/widget/ImageView;

.field labelView:Landroid/widget/TextView;

.field listItemType:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

.field nameView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

.field networkView:Landroid/widget/ImageView;

.field numberLabelHolder:Landroid/widget/LinearLayout;

.field numberView:Landroid/widget/TextView;

.field position:I

.field primaryIconView:Landroid/widget/ImageView;

.field rcsStatusIcon:Landroid/widget/ImageView;

.field secondaryIconView:Landroid/widget/ImageView;

.field singleItemView:Landroid/view/View;

.field syncCallIconView:Landroid/widget/ImageView;

.field urgentIconView:Landroid/widget/ImageView;

.field voiceMailClickableView:Landroid/view/View;

.field voiceMailIconView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;-><init>()V

    return-void
.end method


# virtual methods
.method public bindRecentCallItemViews(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 954
    const v0, 0x7f0e0073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailClickableView:Landroid/view/View;

    .line 955
    const v0, 0x7f0e0066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->singleItemView:Landroid/view/View;

    .line 956
    const v0, 0x7f0e0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->nameView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    .line 957
    const v0, 0x7f0e0052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    .line 958
    const v0, 0x7f0e0053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    .line 959
    const v0, 0x7f0e0057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->dateView:Landroid/widget/TextView;

    .line 960
    const v0, 0x7f0e006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->countView:Landroid/widget/TextView;

    .line 961
    const v0, 0x7f0e0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->callSubjectView:Landroid/widget/TextView;

    .line 962
    const v0, 0x7f0e0072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->callLocationView:Landroid/widget/TextView;

    .line 963
    const v0, 0x7f0e006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    .line 964
    const v0, 0x7f0e006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->urgentIconView:Landroid/widget/ImageView;

    .line 965
    const v0, 0x7f0e0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailIconView:Landroid/widget/ImageView;

    .line 966
    const v0, 0x7f0e0067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->detailView:Landroid/widget/ImageView;

    .line 967
    const v0, 0x7f0e006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->networkView:Landroid/widget/ImageView;

    .line 968
    const v0, 0x7f0e006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    .line 969
    const v0, 0x7f0e006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->rcsStatusIcon:Landroid/widget/ImageView;

    .line 970
    const v0, 0x7f0e0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberLabelHolder:Landroid/widget/LinearLayout;

    .line 971
    const v0, 0x7f0e0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->syncCallIconView:Landroid/widget/ImageView;

    .line 953
    return-void
.end method
