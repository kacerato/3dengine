.class public Lv7/a$i$c$a$c;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/a$i$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lwd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lv7/a$i$c$a;


# direct methods
.method public constructor <init>(Lv7/a$i$c$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$c$a$c;->b:Lv7/a$i$c$a;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Lwd/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CREATE_NEW_BACKUP:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lv7/a$i$c$a$c$a;

    invoke-direct {v1, p0}, Lv7/a$i$c$a$c$a;-><init>(Lv7/a$i$c$a$c;)V

    const v2, 0x7f07008c

    invoke-direct {p1, v2, v0, v1}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
