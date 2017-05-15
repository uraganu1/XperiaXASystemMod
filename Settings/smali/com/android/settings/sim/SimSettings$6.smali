.class Lcom/android/settings/sim/SimSettings$6;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/SimSettings;
    .param p2, "$anonymous0"    # I
    .param p3, "val$i"    # I

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$6;->this$0:Lcom/android/settings/sim/SimSettings;

    iput p3, p0, Lcom/android/settings/sim/SimSettings$6;->val$i:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$6;->this$0:Lcom/android/settings/sim/SimSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhoneStateListener.onCallStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/sim/SimSettings;->-wrap7(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$6;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->-get0(Lcom/android/settings/sim/SimSettings;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/SimSettings$6;->val$i:I

    aput p1, v0, v1

    .line 1184
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$6;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->-wrap10(Lcom/android/settings/sim/SimSettings;)V

    .line 1181
    return-void
.end method
