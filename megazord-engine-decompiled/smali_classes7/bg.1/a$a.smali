.class public final Lbg/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbg/a;->a(Leg/a;)Ljava/lang/AutoCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoCloseableJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoCloseableJVM.kt\nkotlin/jdk7/AutoCloseableKt$AutoCloseable$1\n*L\n1#1,51:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nAutoCloseableJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoCloseableJVM.kt\nkotlin/jdk7/AutoCloseableKt$AutoCloseable$1\n*L\n1#1,51:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Leg/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/a<",
            "LFf/P0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/a<",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbg/a$a;->b:Leg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lbg/a$a;->b:Leg/a;

    invoke-interface {v0}, Leg/a;->invoke()Ljava/lang/Object;

    return-void
.end method
