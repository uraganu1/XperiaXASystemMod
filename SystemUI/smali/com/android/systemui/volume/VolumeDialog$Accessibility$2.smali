.class Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog$Accessibility;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialog$Accessibility;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->-wrap0(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V

    .line 1126
    return-void
.end method
