.class Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukMeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe$1;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->onSimMeCheckResponse(I)V

    .line 771
    return-void
.end method
