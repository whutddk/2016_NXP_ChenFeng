#ifndef __USB_MST_H__
#define __USB_MST_H__

    #include "cortex_m0p.h"
    #include "USBHost.h"
    #include "SCSI.h"

    typedef enum {
      msterr_none,
      msterr_comunication_error
    } mst_error_t;
    
    typedef struct {
      uint_16 ifcd_offset;
      uint_8 cfg_ndx;
      uint_8 ifc_ndx;
      uint_8 alt_set;
      uint_8 in_ep;
      uint_8 out_ep;
      uint_8 nlun;
      mst_error_t mst_error;  
    } MSTInfoStruct;

    extern int usb_mst_reset(void);
    extern int usb_mst_getnlun(void);
    extern int usb_mst_transfer(uint_8 cmd_length, void *cmd, uint_8 dir, uint_32 buf_length, const uint_8 *buf);
    extern int usb_mst_init(void);
    uint_8 GetMSTStat(void);
    void SetMSTStat(uint_8 state);

    extern int print_kl25 (const char *fmt, ...);

    #define  USB_OK                              (0x00)
    #define  USBERR_ALLOC                        (0x81)
    #define  USBERR_BAD_STATUS                   (0x82)
    #define  USBERR_CLOSED_SERVICE               (0x83)
    #define  USBERR_OPEN_SERVICE                 (0x84)
    #define  USBERR_TRANSFER_IN_PROGRESS         (0x85)
    #define  USBERR_ENDPOINT_STALLED             (0x86)
    #define  USBERR_ALLOC_STATE                  (0x87)
    #define  USBERR_DRIVER_INSTALL_FAILED        (0x88)
    #define  USBERR_DRIVER_NOT_INSTALLED         (0x89)
    #define  USBERR_INSTALL_ISR                  (0x8A)
    #define  USBERR_INVALID_DEVICE_NUM           (0x8B)
    #define  USBERR_ALLOC_SERVICE                (0x8C)
    #define  USBERR_INIT_FAILED                  (0x8D)
    #define  USBERR_SHUTDOWN                     (0x8E)
    #define  USBERR_INVALID_PIPE_HANDLE          (0x8F)
    #define  USBERR_OPEN_PIPE_FAILED             (0x90)
    #define  USBERR_INIT_DATA                    (0x91)
    #define  USBERR_SRP_REQ_INVALID_STATE        (0x92)
    #define  USBERR_TX_FAILED                    (0x93)
    #define  USBERR_RX_FAILED                    (0x94)
    #define  USBERR_EP_INIT_FAILED               (0x95)
    #define  USBERR_EP_DEINIT_FAILED             (0x96)
    #define  USBERR_TR_FAILED                    (0x97)
    #define  USBERR_BANDWIDTH_ALLOC_FAILED       (0x98)
    #define  USBERR_INVALID_NUM_OF_ENDPOINTS     (0x99)
    #define  USBERR_ADDRESS_ALLOC_FAILED         (0x9A)
    #define  USBERR_PIPE_OPENED_FAILED           (0x9B)
    
    #define  USBERR_DEVICE_NOT_FOUND             (0xC0)
    #define  USBERR_DEVICE_BUSY                  (0xC1)
    #define  USBERR_NO_DEVICE_CLASS              (0xC3)
    #define  USBERR_UNKNOWN_ERROR                (0xC4)
    #define  USBERR_INVALID_BMREQ_TYPE           (0xC5)
    #define  USBERR_GET_MEMORY_FAILED            (0xC6)
    #define  USBERR_INVALID_MEM_TYPE             (0xC7)
    #define  USBERR_NO_DESCRIPTOR                (0xC8)
    #define  USBERR_NULL_CALLBACK                (0xC9)
    #define  USBERR_NO_INTERFACE                 (0xCA)
    #define  USBERR_INVALID_CFIG_NUM             (0xCB)
    #define  USBERR_INVALID_ANCHOR               (0xCC)
    #define  USBERR_INVALID_REQ_TYPE             (0xCD)
    #define  USBERR_ERROR                        (0xFF)
    

    #define  USBERR_ALLOC_EP_QUEUE_HEAD          (0xA8)
    #define  USBERR_ALLOC_TR                     (0xA9)
    #define  USBERR_ALLOC_DTD_BASE               (0xAA)
    #define  USBERR_CLASS_DRIVER_INSTALL         (0xAB)



    #define  USBOTGERR_INVALID_REQUEST           (0x70)
    

    #define USB_CONTROL_PIPE                     (0x00)
    #define USB_ISOCHRONOUS_PIPE                 (0x01)
    #define USB_BULK_PIPE                        (0x02)
    #define USB_INTERRUPT_PIPE                   (0x03)
    
    #define  USB_STATE_UNKNOWN                   (0xff)
    #define  USB_STATE_PENDING_ADDRESS           (0x04) 
    #define  USB_STATE_POWERED                   (0x03)
    #define  USB_STATE_DEFAULT                   (0x02)
    #define  USB_STATE_ADDRESS                   (0x01)
    #define  USB_STATE_CONFIG                    (0x00)
    #define  USB_STATE_SUSPEND                   (0x80)
    
    #define  USB_SELF_POWERED                    (0x01)
    #define  USB_REMOTE_WAKEUP                   (0x02)

    #define  USB_NO_OPERATION                    (0x00)
    #define  USB_ASSERT_BUS_RESET                (0x01)
    #define  USB_DEASSERT_BUS_RESET              (0x02)
    #define  USB_ASSERT_RESUME                   (0x03)
    #define  USB_DEASSERT_RESUME                 (0x04)
    #define  USB_SUSPEND_SOF                     (0x05)
    #define  USB_RESUME_SOF                      (0x06)
    
    #define  USB_STATUS_IDLE                     (0)
    #define  USB_STATUS_STALLED                  (1) 
    #define  USB_STATUS_TRANSFER_PENDING         (2)
    #define  USB_STATUS_TRANSFER_IN_PROGRESS     (3)
    #define  USB_STATUS_ERROR                    (4)
    #define  USB_STATUS_DISABLED                 (5)
    #define  USB_STATUS_TRANSFER_ACCEPTED        (6)
    #define  USB_STATUS_TRANSFER_QUEUED          (7)
    
    #define  USB_RECV                            (0)
    #define  USB_SEND                            (1)
    
    #define  USB_DEVICE_DONT_ZERO_TERMINATE      (0x1)
    
    #define  USB_SETUP_DATA_XFER_DIRECTION       (0x80)
    
    #define  USB_SPEED_FULL                      (0)
    #define  USB_SPEED_LOW                       (1)
    #define  USB_SPEED_HIGH                      (2)
    
    #define  USB_MAX_PKTS_PER_UFRAME             (0x6)
    
    #define MEM_TYPE_USB_BASE                    ((IO_USB_COMPONENT) << (MEM_TYPE_COMPONENT_SHIFT))
    #define MEM_TYPE_USB_HOST_DEVICE             (MEM_TYPE_USB_BASE+1)
    #define MEM_TYPE_USB_HOST_STATE_STRUCT	      (MEM_TYPE_USB_BASE+2)
    #define MEM_TYPE_USB_ISO_PACKET_DESC_STRUCT	(MEM_TYPE_USB_BASE+3)
    #define MEM_TYPE_USB_HOST_PIPE_DESCRIPTORS   (MEM_TYPE_USB_BASE+4)
    #define MEM_TYPE_USB_HOST_PIPE_TR_STRUCT     (MEM_TYPE_USB_BASE+5)
    #define MEM_TYPE_USB_FILESYSTEM_STRUCT       (MEM_TYPE_USB_BASE+6)
    #define MEM_TYPE_USB_CALLBACK_STRUCT	      (MEM_TYPE_USB_BASE+7)
    #define MEM_TYPE_USB_MFS_STRUCT	            (MEM_TYPE_USB_BASE+8)
    #define MEM_TYPE_USB_HOST_SERVICE_STRUCT     (MEM_TYPE_USB_BASE+9)
    
    #define USB_INVALID_PARAMETER               (0x0C)
    #define USB_OUT_OF_MEMORY                   (0x04)
#endif
