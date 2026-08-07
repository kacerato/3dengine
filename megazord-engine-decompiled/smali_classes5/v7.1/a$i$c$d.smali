.class public Lv7/a$i$c$d;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/a$i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lwd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lv7/a$i$c;


# direct methods
.method public constructor <init>(Lv7/a$i$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$c$d;->b:Lv7/a$i$c;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    # Build APK - Offline
    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$d$a;

    invoke-direct {v0, p0}, Lv7/a$i$c$d$a;-><init>(Lv7/a$i$c$d;)V

    const v1, 0x7f070069

    const-string v2, "Build APK - Offline"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    # Build AAB (.aab) - Offline
    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$d$b;

    invoke-direct {v0, p0}, Lv7/a$i$c$d$b;-><init>(Lv7/a$i$c$d;)V

    const v1, 0x7f070069

    const-string v2, "Build AAB (.aab) - Offline"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
