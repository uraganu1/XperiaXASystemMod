.class Lcom/android/systemui/tuner/TunerFragment$4;
.super Ljava/lang/Object;
.source "TunerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/TunerFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/TunerFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/TunerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tuner/TunerFragment;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerFragment$4;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerFragment$4;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "seen_tuner_warning"

    const/4 v2, 0x1

    .line 97
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    return-void
.end method