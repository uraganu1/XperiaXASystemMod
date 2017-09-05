.class public Lcom/android/systemui/statusbar/NotificationOverflowIconsView;
.super Lcom/android/systemui/statusbar/phone/IconMerger;
.source "NotificationOverflowIconsView.java"


# instance fields
.field private mIconSize:I

.field private mMoreText:Landroid/widget/TextView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IconMerger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private applyColor(Landroid/app/Notification;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "view"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mTintColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 67
    return-void
.end method

.method private updateMoreText()V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0901a9

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "notification"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 59
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 58
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 60
    .local v0, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addView(Landroid/view/View;II)V

    .line 62
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 63
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->applyColor(Landroid/app/Notification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->updateMoreText()V

    .line 57
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->onFinishInflate()V

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mTintColor:I

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    const v1, 0x105001b

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    .line 45
    return-void
.end method

.method public setMoreText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "moreText"    # Landroid/widget/TextView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    .line 53
    return-void
.end method
