import React from "react";

export default function Modal(props) {
  return (
    <div>
      <button
        className={props.buttonStyle}
        type="button"
        style={{ transition: "all .15s ease" }}
        onClick={() => {
          props.setIsOpen(true)
          props.onClose()
        }}
      >
        {props.buttonText}
      </button>
      {props.isOpen ? (
        <div>
          <div
            className="justify-center items-center flex overflow-x-hidden overflow-y-auto fixed inset-0 z-50 outline-none focus:outline-none"
          >
            <div className="relative my-6 w-full max-w-3xl">
              {/*content*/}
              <div className="border-0 rounded-lg shadow-lg relative flex flex-col w-full bg-white outline-none focus:outline-none">
                <div onClick={() => props.setIsOpen(false)} className="text-black opacity-50 hover:opacity-100 text-2xl absolute right-0 top-0 pt-2 pr-4">
                  X
                </div>
                {/*body*/}
                <div className="p-2">
                  { props.body }
                </div>
              </div>
            </div>
          </div>
          <div className="opacity-25 fixed inset-0 z-40 bg-black"></div>
        </div>
      ) : null}
    </div>
  );
}