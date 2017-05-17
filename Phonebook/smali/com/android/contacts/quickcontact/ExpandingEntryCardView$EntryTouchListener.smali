.class final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryTouchListener"
.end annotation


# instance fields
.field private final mActionImageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntry:Landroid/view/View;

.field private mSlop:I

.field private mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .param p1, "entry"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1111
    .local p2, "actionImageViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1112
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    .line 1113
    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mActionImageViews:Ljava/util/List;

    .line 1114
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    .line 1111
    return-void
.end method

.method private getTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1179
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mActionImageViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "index":I
    move v1, v0

    .line 1180
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    if-lez v1, :cond_3

    .line 1181
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mActionImageViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1182
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1187
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1189
    .local v5, "viewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1190
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v3, v6, v7

    .line 1191
    .local v3, "treashold":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v7, v3

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 1192
    return-object v4

    :cond_0
    move v1, v0

    .line 1194
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1198
    .end local v1    # "index":I
    .end local v3    # "treashold":I
    .restart local v0    # "index":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v3, v6, v7

    .line 1199
    .restart local v3    # "treashold":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v7, v3

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 1200
    return-object v4

    :cond_2
    move v1, v0

    .line 1202
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1207
    .end local v1    # "index":I
    .end local v2    # "parentView":Landroid/view/View;
    .end local v3    # "treashold":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "viewParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v0    # "index":I
    :cond_3
    const/4 v6, 0x0

    return-object v6
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 1119
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    .line 1120
    .local v5, "touchedView":Landroid/view/View;
    const/4 v3, 0x0

    .line 1121
    .local v3, "sendToTouched":Z
    const/4 v1, 0x1

    .line 1122
    .local v1, "hit":Z
    const/4 v0, 0x0

    .line 1123
    .local v0, "handled":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1125
    .local v2, "motionEventAction":I
    packed-switch v2, :pswitch_data_0

    .line 1156
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 1157
    if-eqz v1, :cond_5

    .line 1158
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-virtual {p2, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1164
    :goto_1
    invoke-virtual {v5, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1166
    .end local v0    # "handled":Z
    :cond_1
    return v0

    .line 1127
    .restart local v0    # "handled":Z
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->getTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v6

    .line 1128
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 1129
    iput-object v6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    .line 1130
    const/4 v3, 0x1

    .line 1135
    :goto_2
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    goto :goto_0

    .line 1132
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    iput-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    .line 1133
    const/4 v3, 0x0

    goto :goto_2

    .line 1139
    .end local v6    # "view":Landroid/view/View;
    :pswitch_1
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    if-eq v7, v8, :cond_3

    const/4 v3, 0x1

    .line 1140
    :goto_3
    if-eqz v3, :cond_0

    .line 1141
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1142
    .local v4, "slopBounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1143
    iget v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    neg-int v7, v7

    iget v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    neg-int v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 1144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1145
    const/4 v1, 0x0

    goto :goto_0

    .line 1139
    .end local v4    # "slopBounds":Landroid/graphics/Rect;
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 1150
    :pswitch_2
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mEntry:Landroid/view/View;

    if-eq v7, v8, :cond_4

    const/4 v3, 0x1

    .line 1151
    :goto_4
    iput-object v9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mTouchedView:Landroid/view/View;

    goto :goto_0

    .line 1150
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 1162
    :cond_5
    iget v7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    mul-int/lit8 v7, v7, 0x2

    neg-int v7, v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTouchListener;->mSlop:I

    mul-int/lit8 v8, v8, 0x2

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 1125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
