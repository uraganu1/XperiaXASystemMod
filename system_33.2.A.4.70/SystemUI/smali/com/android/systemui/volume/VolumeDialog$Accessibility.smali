.class final Lcom/android/systemui/volume/VolumeDialog$Accessibility;
.super Landroid/view/View$AccessibilityDelegate;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Accessibility"
.end annotation


# instance fields
.field private mFeedbackEnabled:Z

.field private mMgr:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mFeedbackEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    return-void
.end method

.method private computeFeedbackEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1147
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mMgr:Landroid/view/accessibility/AccessibilityManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 1148
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "asi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1149
    .local v0, "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 1150
    const/4 v3, 0x1

    return v3

    .line 1153
    .end local v0    # "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return v5
.end method

.method private updateFeedbackEnabled()V
    .locals 1

    .prologue
    .line 1141
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->computeFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mFeedbackEnabled:Z

    .line 1140
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get3(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 1110
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get6(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$Accessibility$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility$1;-><init>(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1123
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get6(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1124
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mMgr:Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;-><init>(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1130
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->updateFeedbackEnabled()V

    .line 1108
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 1137
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
