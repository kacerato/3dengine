.class public final Lkg/a$a;
.super Lkg/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkg/a;->b(Ljava/lang/Object;Leg/q;)Lkg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkg/c<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n*L\n1#1,73:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n*L\n1#1,73:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "Log/n<",
            "*>;TT;TT;",
            "LFf/P0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Leg/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Leg/q<",
            "-",
            "Log/n<",
            "*>;-TT;-TT;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lkg/a$a;->b:Leg/q;

    invoke-direct {p0, p1}, Lkg/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c(Log/n;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Log/n<",
            "*>;TT;TT;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkg/a$a;->b:Leg/q;

    invoke-interface {v0, p1, p2, p3}, Leg/q;->E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
