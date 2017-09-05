.class Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$1;
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
    .line 720
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 722
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->onSimCheckResponse(II)V

    .line 721
    return-void
.end method
