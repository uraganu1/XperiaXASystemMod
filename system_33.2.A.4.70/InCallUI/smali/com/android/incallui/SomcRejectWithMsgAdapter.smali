.class public Lcom/android/incallui/SomcRejectWithMsgAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SomcRejectWithMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultTxtColor:I

.field private final mDefaultTxtSize:F

.field private final mDefaultTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 42
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    check-cast v1, Landroid/view/LayoutInflater;

    .line 43
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090003

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 44
    .local v2, "view":Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "defaultTextView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 46
    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter;->mDefaultTxtSize:F

    .line 48
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter;->mDefaultTxtColor:I

    .line 49
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter;->mDefaultTypeface:Landroid/graphics/Typeface;

    .line 38
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcRejectWithMsgAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;

    .line 60
    .local v0, "item":Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;
    iget-boolean v1, v0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mIsSubTitle:Z

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 61
    check-cast v1, Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0}, Lcom/android/incallui/SomcRejectWithMsgAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 63
    const v3, 0x7f080108

    .line 62
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 61
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v1, p2

    .line 64
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SomcRejectWithMsgAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 65
    const v3, 0x7f070081

    .line 64
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v1, p2

    .line 66
    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter;->mDefaultTypeface:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 73
    :goto_0
    iget v1, v0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mIconResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    move-object v1, p2

    .line 74
    check-cast v1, Landroid/widget/TextView;

    .line 75
    iget v2, v0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mIconResId:I

    .line 74
    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 79
    :goto_1
    return-object p2

    :cond_0
    move-object v1, p2

    .line 68
    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter;->mDefaultTxtSize:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    move-object v1, p2

    .line 69
    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter;->mDefaultTxtColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v1, p2

    .line 70
    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter;->mDefaultTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 77
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcRejectWithMsgAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;

    .line 96
    .local v0, "item":Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;
    iget-boolean v1, v0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mIsSubTitle:Z

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x0

    return v1

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result v1

    return v1
.end method
