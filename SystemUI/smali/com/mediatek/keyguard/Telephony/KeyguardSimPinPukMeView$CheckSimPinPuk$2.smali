.class Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$2;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukMeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$2;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$2;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->onSimCheckResponse(II)V

    .line 728
    return-void
.end method
